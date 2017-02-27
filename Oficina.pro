#-------------------------------------------------
#
# Project created by QtCreator 2014-11-22T20:43:35
#
#-------------------------------------------------

QT       += core gui
QT       += sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Oficina
TEMPLATE = app


SOURCES +=\
    About.cpp \
    Client_Add.cpp \
    Client_Add_Car.cpp \
    Stock_Add_Part.cpp \
    Client_Add_Service.cpp \
    Service_Create_Description.cpp \
    Man_Page.cpp \
    Stock_Parts_Selection.cpp \
    Service_Update_Description.cpp \
    Config_Set_Hour_Cost.cpp \
    Stock_Control.cpp \
    Database.cpp \
    Main.cpp \
    Main_Window.cpp \
    Client_Services_History.cpp \
    Client_Update.cpp \
    Stock_Update_Part.cpp \
    Stock_Finances.cpp \
    Employee_Add.cpp \
    Employee_Update.cpp \
    Employee_List.cpp \
    System_Services_and_Info.cpp

HEADERS  += \
    About.h \
    Client_Add.h \
    Client_Add_Car.h \
    Stock_Add_Part.h \
    Client_Add_Service.h \
    Service_Create_Description.h \
    Man_Page.h \
    Stock_Parts_Selection.h \
    Service_Update_Description.h \
    Config_Set_Hour_Cost.h \
    Stock_Control.h \
    Database.h \
    Main_Window.h \
    Client_Services_History.h \
    Client_Update.h \
    Stock_Update_Part.h \
    Stock_Finances.h \
    Employee_Add.h \
    Employee_Update.h \
    Employee_List.h \
    System_Services_and_Info.h \
    Emplyee_List.h

FORMS    += \
    About.ui \
    Client_Add.ui \
    Client_Add_Car.ui \
    Stock_Add_Part.ui \
    Client_Add_service.ui \
    Service_Create_Description.ui \
    Man_Page.ui \
    Stock_Parts_Selection.ui \
    Service_Update_Description.ui \
    Config_Set_Hour_Cost.ui \
    Stock_Control.ui \
    Main_Window.ui \
    Client_Services_History.ui \
    Client_Update.ui \
    Stock_Update_Part.ui \
    Stock_Finances.ui \
    Employee_Add.ui \
    Employee_Update.ui \
    Employee_List.ui \
    Emplyee_List.ui

DISTFILES += \
    resources/emote-love.png \
    resources/face-angel.png \
    resources/face-angry.png \
    resources/face-devilish.png \
    resources/face-embarrassed.png \
    resources/face-kiss.png \
    resources/face-monkey.png \
    resources/face-plain.png \
    resources/face-raspberry.png \
    resources/face-sad.png \
    resources/face-smile-big.png \
    resources/face-smile.png \
    resources/face-surprise.png \
    resources/face-wink.png \
    resources/face-worried.png \
    resources/DB11-model2.png \
    Create_Database.sql \
    LICENSE \
    README.md \
    resources/Oficina-0.1.1.png \
    TODO \
    resources/Screenshots/Oficina_Add_Client.png \
    resources/Screenshots/Oficina_ClientAddCar.png \
    resources/Screenshots/Oficina_editing_A_Service.png \
    resources/Screenshots/Oficina_HourCost.png \
    resources/Screenshots/Oficina_Stock_Control.png \
    resources/Screenshots/Oficina-0.1-Alpha_eh_Pouco.png \
    resources/Screenshots/Oficina-0.2-HackWeek.png \
    resources/Screenshots/Oficina_Stock_AddPart.png \
    Oficina.Desktop \
    po/Oficina_pt_BR.qm \
    po/Oficina_pt_BR.ts

RESOURCES += \
    resources/images.qrc \
    po/translations.qrc \
    resources/translations.qrc

TRANSLATIONS += \
    po/Oficina_pt_BR.ts
