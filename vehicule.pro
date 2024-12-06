QT       += core gui serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets sql charts printsupport

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += $$PWD/libs/qrcodegen

SOURCES += \
    arduino.cpp \
    connexion.cpp \
    main.cpp \
    mainwindow.cpp \
    qrcodedialog.cpp \
    statistique.cpp \
    vehicule.cpp \
    vehiculeui.cpp \
    libs/qrcodegen/qrcodegen.cpp

HEADERS += \
    arduino.h \
    connexion.h \
    mainwindow.h \
    qrcodedialog.h \
    statistique.h \
    vehicule.h \
    vehiculeui.h \
    libs/qrcodegen/qrcodegen.hpp

FORMS += \
    mainwindow.ui \
    qrcodedialog.ui \
    statistique.ui \
    vehiculeui.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target