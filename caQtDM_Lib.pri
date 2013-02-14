QT       += core gui

CONFIG      += qt warn_on thread uitools designer plugin

TARGET = caQtDM_Lib
TEMPLATE = lib

MOC_DIR = ../moc
VPATH += ../src
INCLUDEPATH += ../src
DESTDIR = ../
UI_DIR += ../

QWTLIB = $(QWTHOME)/lib
QTCONTROLS = $(QTBASE)/binQt
EPICSLIB = $(EPICSLIB)

DEFINES += CAQTDM_LIB_LIBRARY

SOURCES += caqtdm_lib.cpp \
    mutexKnobData.cpp \
    globalPtrs.cpp \
    epicsSubs.c \
    dmsearchfile.cpp \
    MessageWindow.cpp \
    vaPrintf.c \
    myMessageBox.cpp \
    limitsStripplotDialog.cpp \
    limitsCartesianplotDialog.cpp

HEADERS += caqtdm_lib.h\
        caQtDM_Lib_global.h \
    mutexKnobDataWrapper.h \
    mutexKnobData.h \
    medmpio.h \
    knobDefines.h \
    knobData.h \
    dbrString.h \
    alarmdefs.h \
    dmsearchfile.h \
    MessageWindow.h \
    messageWindowWrapper.h \
    vaPrintf.h \
    myMessageBox.h \
    limitsStripplotDialog.h \
    limitsCartesianplotDialog.h

HEADERS += \
    JSONValue.h \
    JSON.h

SOURCES += \
    JSONValue.cpp \
    JSON.cpp


INCLUDEPATH += .

LIBS += -L$${EPICSLIB} -Wl,-rpath,$${EPICSLIB} -lca
LIBS += -L$${QTCONTROLS} -Wl,-rpath,$${QTCONTROLS} -lqtcontrols

INCLUDEPATH += $(QWTHOME)/src
INCLUDEPATH += $(EPICSINCLUDE)
INCLUDEPATH += $(EPICSINCLUDE)/os/Linux
INCLUDEPATH += $(HOME)/workarea/ACS/mezger/caQtDM_QtControls/src
