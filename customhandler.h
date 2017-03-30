#ifndef CUSTOMHANDLER_H
#define CUSTOMHANDLER_H
#include <QObject>

class CustomHandler : public QObject
{
    Q_OBJECT
public:
    explicit CustomHandler(QObject* parent = nullptr);
    virtual ~CustomHandler();

public slots:
    // test
    void handleEventFromQML(void);

};

#endif // CUSTOMHANDLER_H
