TEMPLATE = app
DESTDIR = dist
TARGET = kajammer
VERSION = 0.1.1
CONFIG -= debug_and_release
CONFIG += debug 
QT = core gui phonon
SOURCES += mainwindow.cpp mediacontrols.cpp controller.cpp menubar.cpp main.cpp
HEADERS += menubar.h mainwindow.h mediacontrols.h controller.h
FORMS +=
RESOURCES +=
TRANSLATIONS +=
OBJECTS_DIR = build/Debug/GNU-Linux-x86
MOC_DIR = 
RCC_DIR = 
UI_DIR = 
QMAKE_CC = gcc
QMAKE_CXX = g++
DEFINES += 
INCLUDEPATH += 
LIBS += 
