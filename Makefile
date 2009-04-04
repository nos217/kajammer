#############################################################################
# Makefile for building: bin/kajammer
# Generated by qmake (2.01a) (Qt 4.5.0) on: Sat Apr 4 13:55:33 2009
# Project:  kajammer.pro
# Template: app
# Command: /usr/bin/qmake -unix -o Makefile kajammer.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_PHONON_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4/phonon -I/usr/include/qt4 -I/usr/include/qt4 -I. -I.
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)  -L/usr/lib/qt4 -lphonon -lQtGui -L/usr/lib/qt4 -L/usr/X11R6/lib -pthread -lpng -lfreetype -lgobject-2.0 -lSM -lICE -pthread -pthread -lXrender -lXrandr -lXinerama -lfontconfig -lXext -lX11 -lQtCore -lz -lm -pthread -lgthread-2.0 -lrt -lglib-2.0 -ldl -lpthread
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = build/

####### Files

SOURCES       = mainwindow.cpp \
		mediacontrols.cpp \
		controller.cpp \
		menubar.cpp \
		main.cpp \
		playlist.cpp \
		cli.cpp moc_menubar.cpp \
		moc_mediacontrols.cpp \
		moc_controller.cpp \
		moc_playlist.cpp
OBJECTS       = build/mainwindow.o \
		build/mediacontrols.o \
		build/controller.o \
		build/menubar.o \
		build/main.o \
		build/playlist.o \
		build/cli.o \
		build/moc_menubar.o \
		build/moc_mediacontrols.o \
		build/moc_controller.o \
		build/moc_playlist.o
DIST          = /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		kajammer.pro
QMAKE_TARGET  = kajammer
DESTDIR       = bin/
TARGET        = bin/kajammer

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	@$(CHK_DIR_EXISTS) bin/ || $(MKDIR) bin/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: kajammer.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/lib/qt4/libQtGui.prl \
		/usr/lib/qt4/libQtCore.prl
	$(QMAKE) -unix -o Makefile kajammer.pro
/usr/share/qt4/mkspecs/common/g++.conf:
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/lib/qt4/libQtGui.prl:
/usr/lib/qt4/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -unix -o Makefile kajammer.pro

dist: 
	@$(CHK_DIR_EXISTS) build/kajammer0.1.1 || $(MKDIR) build/kajammer0.1.1 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) build/kajammer0.1.1/ && $(COPY_FILE) --parents menubar.h mainwindow.h mediacontrols.h controller.h playlist.h cli.h build/kajammer0.1.1/ && $(COPY_FILE) --parents mainwindow.cpp mediacontrols.cpp controller.cpp menubar.cpp main.cpp playlist.cpp cli.cpp build/kajammer0.1.1/ && (cd `dirname build/kajammer0.1.1` && $(TAR) kajammer0.1.1.tar kajammer0.1.1 && $(COMPRESS) kajammer0.1.1.tar) && $(MOVE) `dirname build/kajammer0.1.1`/kajammer0.1.1.tar.gz . && $(DEL_FILE) -r build/kajammer0.1.1


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_menubar.cpp moc_mediacontrols.cpp moc_controller.cpp moc_playlist.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_menubar.cpp moc_mediacontrols.cpp moc_controller.cpp moc_playlist.cpp
moc_menubar.cpp: controller.h \
		playlist.h \
		menubar.h
	/usr/bin/moc $(DEFINES) $(INCPATH) menubar.h -o moc_menubar.cpp

moc_mediacontrols.cpp: controller.h \
		playlist.h \
		mediacontrols.h
	/usr/bin/moc $(DEFINES) $(INCPATH) mediacontrols.h -o moc_mediacontrols.cpp

moc_controller.cpp: controller.h
	/usr/bin/moc $(DEFINES) $(INCPATH) controller.h -o moc_controller.cpp

moc_playlist.cpp: playlist.h
	/usr/bin/moc $(DEFINES) $(INCPATH) playlist.h -o moc_playlist.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

build/mainwindow.o: mainwindow.cpp mainwindow.h \
		mediacontrols.h \
		controller.h \
		playlist.h \
		menubar.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/mainwindow.o mainwindow.cpp

build/mediacontrols.o: mediacontrols.cpp mediacontrols.h \
		controller.h \
		playlist.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/mediacontrols.o mediacontrols.cpp

build/controller.o: controller.cpp controller.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/controller.o controller.cpp

build/menubar.o: menubar.cpp menubar.h \
		controller.h \
		playlist.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/menubar.o menubar.cpp

build/main.o: main.cpp mainwindow.h \
		mediacontrols.h \
		controller.h \
		playlist.h \
		menubar.h \
		cli.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/main.o main.cpp

build/playlist.o: playlist.cpp playlist.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/playlist.o playlist.cpp

build/cli.o: cli.cpp cli.h \
		controller.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/cli.o cli.cpp

build/moc_menubar.o: moc_menubar.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/moc_menubar.o moc_menubar.cpp

build/moc_mediacontrols.o: moc_mediacontrols.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/moc_mediacontrols.o moc_mediacontrols.cpp

build/moc_controller.o: moc_controller.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/moc_controller.o moc_controller.cpp

build/moc_playlist.o: moc_playlist.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/moc_playlist.o moc_playlist.cpp

####### Install

install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/bin/ || $(MKDIR) $(INSTALL_ROOT)/usr/bin/ 
	-$(INSTALL_PROGRAM) /home/casey/workspace/kajammer/bin/kajammer $(INSTALL_ROOT)/usr/bin/


uninstall_target:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/bin/kajammer
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/bin/ 


install:  install_target  FORCE

uninstall: uninstall_target   FORCE

FORCE:

