#pragma once

#include "searchengine.h"

#include <QObject>

class WebObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QObject *searchEngine READ searchEngine CONSTANT)
public:
    explicit WebObject(QObject *parent = nullptr);

Q_SIGNALS:
    void engineFound(QWidget *widget, Engine engine);

private:
    SearchEngine *m_searchEngine = nullptr;

    QObject *searchEngine();
};
