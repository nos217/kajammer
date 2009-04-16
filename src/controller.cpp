/*
 * File:   controller.cpp
 * Author: casey
 *
 * Created on March 10, 2009, 4:27 PM
 *
 * This file is part of KaJammer.
 *
 * KaJammer is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * KaJammer is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with KaJammer.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "controller.h"
#include <iostream>

Controller* Controller::controller = 0;

Controller::Controller()
{
    audioOutput = new Phonon::AudioOutput(Phonon::MusicCategory);
    mediaObject = new Phonon::MediaObject;
    Phonon::Path path = Phonon::createPath(mediaObject, audioOutput);

    playlist = Playlist::getInstance();
    currentSong = -1;
    currentList = -1;

    connect(mediaObject, SIGNAL(finished()), this, SLOT(setNextSong()));
}

Controller* Controller::getInstance()
{
    if(controller == 0)
    {
        controller = new Controller;
    }
    return controller;
}


void Controller::setQueue(QStringList queue)
{
    // Clean out the queue so we can start empty
    songQueue.clear();
    currentSong = -1;

    // _Will_ crash if queue is empty
    if(!queue.isEmpty())
    {
        // Finally add new data to the queue
        for(int i = 0; i < queue.count(); i++)
            songQueue.append(queue.at(i));

        emit queueSet(songQueue);
        setSong(0);
    }
}

void Controller::setSong(int index)
{
    //If user cancels out of open dialog, don't stop playing the current song
    if(!songQueue.isEmpty())
    {
        if(currentSong != index)
        {
            // set currentSong so when we press next we know where we are in the queue.
            // and so we know what currentSong is next time the table is clicked
            currentSong = index;
            Phonon::MediaSource fileName = songQueue.at(index);
            changeSong(fileName);
        }
    }
}

void Controller::changeSong(Phonon::MediaSource song)
{
    mediaObject->stop();
    mediaObject->setCurrentSource(song);
    mediaObject->play();
    emit songChanged(currentSong);
}

//Allow external access to the mediaObject
void Controller::play()
{
    mediaObject->play();
}

void Controller::pause()
{
    mediaObject->pause();
}

void Controller::setNextSong()
{
    /* subtract one from count because index starts at 0
    * and count starts from 1 */
    if(currentSong < songQueue.count() - 1)
        setSong(currentSong + 1);
}

void Controller::setPrevSong()
{
    if(currentSong != 0)
        setSong(currentSong - 1);
}

void Controller::changePlaylist(int index)
{
    if(currentList != index)
    {
        currentList = index;
        QStringList list = playlist->getPlaylistContents(index);
        controller->setQueue(list);
    }
}

void Controller::resetCurrentList()
{
    currentList = -1;
}

Phonon::AudioOutput* Controller::getAudioOutput()
{
    return audioOutput;
}

Phonon::MediaObject* Controller::getMediaObject()
{
    return mediaObject;
}