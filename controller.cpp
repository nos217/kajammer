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

Controller* Controller::controller = 0;

Controller::Controller()
{
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

    // Finally add new data to the queue
    for(int i = 0; i < queue.count(); i++)
        songQueue.append(queue.at(i));

    emit queueSet(songQueue);
}

void Controller::setSong(int index)
{
    //If user cancels out of open dialog, don't stop playing the current song
     if(!songQueue.isEmpty())
     {
         fileName = songQueue.at(index);         
         emit songChanged(fileName);
    }
}
