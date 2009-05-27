/* 
 * File:   controller.h
 * Author: Casey Jones
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

#ifndef _CONTROLLER_H
#define	_CONTROLLER_H

#include <QtCore/QObject>
#include <QtCore/QStringList>
#include <QtCore/QString>
#include <QtCore/QList>
#include <phonon/mediaobject.h>
#include <phonon/mediasource.h>
#include <phonon/audiooutput.h>
#include <iostream>
#include <ctime>
#include <cstdlib>

#include "playlist.h"

class Controller : public QObject
{
    Q_OBJECT;

public:
    static Controller* getInstance();
    void setQueue(QStringList);
    void resetCurrentList() { currentList = -1; }
    Phonon::AudioOutput* getAudioOutput() { return audioOutput; }
    Phonon::MediaObject* getMediaObject() { return mediaObject; }
    
public slots:
    void setSong(int);
    void changeSong(Phonon::MediaSource);
    void play() { mediaObject->play(); }
    void pause() { mediaObject->pause(); }
    void setNextSong();
    void setPrevSong();
    void changePlaylist(QString, int);
    void toggleShuffle();
    void toggleRepeat();
    
signals:
    void songChanged(int);
    void queueSet(QList<Phonon::MediaSource>);

protected:
    Controller();

private:
    static Controller *controller;
    Playlist *playlist;
    
    Phonon::AudioOutput *audioOutput;
    Phonon::MediaObject *mediaObject;
    QMap<int, Phonon::MediaSource> trackQueue;
    int currentSong;
    int currentList;
    bool isShuffle;
    bool isRepeat;
    bool repeated;
};

#endif /* _CONTROLLER_H */

