
QT -= core gui

TARGET = core
TEMPLATE = lib
CONFIG += staticlib
CONFIG += create_prl

SOURCES += \
    ann_utils.cpp \
    darwin.cpp \
    logging.cpp \
    platform_abstraction_layer.cpp \
    database.cpp \
    universe.cpp \
    evolution.cpp \
    ann_activation_functions.cpp \
    parallel_for_each.cpp \
    thread_pool.cpp \
    ann_dynamic.cpp \
    utils.cpp \
    tournament.cpp

HEADERS += \
    ann_utils.h \
    darwin.h \
    ann_dynamic.h \
    pubsub.h \
    logging.h \
    scope_guard.h \
    matrix.h \
    math_2d.h \
    exception.h \
    properties.h \
    io_utils.h \
    stringify.h \
    platform_abstraction_layer.h \
    database.h \
    format.h \
    universe.h \
    evolution.h \
    ann_activation_functions.h \
    parallel_for_each.h \
    thread_pool.h \
    utils.h \
    pp_utils.h \
    modules.h \
    tournament.h
    
#------------------------------------------------------------------------------
# third_party/sqlite
#
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../third_party/sqlite/release/ -lsqlite
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../third_party/sqlite/debug/ -lsqlite
else:unix: LIBS += -L$$OUT_PWD/../third_party/sqlite/ -lsqlite

DEPENDPATH += $$PWD/../third_party/sqlite

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third_party/sqlite/release/libsqlite.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third_party/sqlite/debug/libsqlite.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third_party/sqlite/release/sqlite.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third_party/sqlite/debug/sqlite.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../third_party/sqlite/libsqlite.a

#------------------------------------------------------------------------------
# third_party/box2d
#
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../third_party/box2d/release/ -lbox2d
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../third_party/box2d/debug/ -lbox2d
else:unix: LIBS += -L$$OUT_PWD/../third_party/box2d/ -lbox2d

DEPENDPATH += $$PWD/../third_party/box2d

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third_party/box2d/release/libbox2d.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third_party/box2d/debug/libbox2d.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third_party/box2d/release/box2d.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../third_party/box2d/debug/box2d.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../third_party/box2d/libbox2d.a

#------------------------------------------------------------------------------
# common
#
include(../common.pri)

