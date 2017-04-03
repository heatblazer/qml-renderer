#include "customhandler.h"
#include <QCoreApplication>
#include <iostream>

CustomHandler::CustomHandler(QObject *parent)
    : QObject(parent)
{
}

CustomHandler::~CustomHandler()
{
}

void CustomHandler::handleEventFromQML()
{
    std::cout << "HANDLING SIGNAL FROM C++\n\n";
    QCoreApplication::instance()->exit(0);
}

