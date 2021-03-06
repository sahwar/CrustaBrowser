#include "preferences.h"
#include "utils.h"

#include <QCheckBox>
#include <QComboBox>
#include <QGridLayout>
#include <QGroupBox>
#include <QHBoxLayout>
#include <QLabel>
#include <QLineEdit>
#include <QPushButton>
#include <QSpinBox>
#include <QTabWidget>
#include <QTextCodec>
#include <QVBoxLayout>
#include <QWebEngineSettings>

Preferences::Preferences(QWidget *parent)
    : QWidget (parent)
{
    m_tabWidget = new QTabWidget;

    QPushButton *doneButton = new QPushButton(QStringLiteral("Done"));

    QVBoxLayout *vboxLayout = new QVBoxLayout;
    setLayout(vboxLayout);

    vboxLayout->addWidget(m_tabWidget);

    QHBoxLayout *hboxLayout = new QHBoxLayout;
    hboxLayout->addWidget(new QWidget, 1);
    hboxLayout->addWidget(doneButton, 0);
    vboxLayout->addLayout(hboxLayout);

    m_tabWidget->setDocumentMode(true);
    m_tabWidget->tabBar()->setExpanding(true);
    doneButton->setObjectName(QStringLiteral("default"));

    installWidget(QStringLiteral("Appearance"), createAppearanceTab());
    installWidget(QStringLiteral("Browsing"), createBrowsingTab());
    installWidget(QStringLiteral("Search Engine"), createSearchEngineTab());
    installWidget(QStringLiteral("Web Engine"), createWebEngineTab());

    setAttribute(Qt::WA_DeleteOnClose);
    setWindowFlags(Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint);

    Utils::setMovableByBackground(winId());

    setMinimumWidth(200 + m_tabWidget->minimumSizeHint().width());
    connect(doneButton, &QPushButton::clicked, this, &QWidget::close);
}

void Preferences::installWidget(const QString &name, QWidget *widget)
{
    m_tabWidget->addTab(widget, name);
}

QWidget *Preferences::createAppearanceTab()
{
    QWidget *widget = new QWidget;
    QVBoxLayout *vboxLayout = new QVBoxLayout;
    widget->setLayout(vboxLayout);

    QGroupBox *themeBox = new QGroupBox(QStringLiteral("Theme"));
    {
        QVBoxLayout *vboxLayout = new QVBoxLayout;
        themeBox->setLayout(vboxLayout);

        QComboBox *themeName = new QComboBox;

        QGridLayout *grid = new QGridLayout;
        grid->addWidget(new QLabel(QStringLiteral("Theme name")), 1, 1);
        grid->addWidget(themeName, 1, 2);

        vboxLayout->addLayout(grid);
    }

    QGroupBox *generalBox = new QGroupBox(QStringLiteral("General"));
    {
        QGridLayout *grid = new QGridLayout;
        generalBox->setLayout(grid);

        QComboBox *tabsPosition = new QComboBox;
        tabsPosition->addItems(QStringList() << QStringLiteral("Top") << QStringLiteral("Bottom"));

        QComboBox *toolbarPosition = new QComboBox;
        toolbarPosition->addItems(QStringList() << QStringLiteral("Top") << QStringLiteral("Bottom"));

        QCheckBox *statusBarVisibility = new QCheckBox(QStringLiteral("visible"));

        grid->addWidget(new QLabel(QStringLiteral("Tabs position")), 1, 1);
        grid->addWidget(tabsPosition, 1, 2);
        grid->addWidget(new QLabel(QStringLiteral("Tool bar position")), 2, 1);
        grid->addWidget(toolbarPosition, 2, 2);
        grid->addWidget(new QLabel(QStringLiteral("Status bar")), 3, 1);
        grid->addWidget(statusBarVisibility, 3, 2);
    }

    vboxLayout->addWidget(themeBox, 0);
    vboxLayout->addWidget(generalBox, 0);
    vboxLayout->addWidget(new QWidget, 1);

    return widget;
}

QWidget *Preferences::createBrowsingTab()
{
    QWidget *widget = new QWidget;
    QVBoxLayout *vboxLayout = new QVBoxLayout;
    widget->setLayout(vboxLayout);

    QGroupBox *generalBox = new QGroupBox(QStringLiteral("General"));
    {
        QGridLayout *grid = new QGridLayout;
        generalBox->setLayout(grid);

        QLineEdit *homePage = new QLineEdit;
        QLineEdit *startPage = new QLineEdit;
        QLineEdit *newTabPage = new QLineEdit;
        QComboBox *zoom = new QComboBox;

        zoom->addItems(QStringList()
                       << QStringLiteral("25%") << QStringLiteral("33%") << QStringLiteral("50%")
                       << QStringLiteral("75%") << QStringLiteral("90%") << QStringLiteral("100%")
                       << QStringLiteral("125%") << QStringLiteral("150%") << QStringLiteral("175%")
                       << QStringLiteral("200%") << QStringLiteral("225%") << QStringLiteral("250%")
                       << QStringLiteral("275%") << QStringLiteral("300%") << QStringLiteral("325%")
                       << QStringLiteral("350%") << QStringLiteral("375%") << QStringLiteral("400%"));

        grid->addWidget(new QLabel(QStringLiteral("Home page")), 1, 1);
        grid->addWidget(homePage, 1, 2);
        grid->addWidget(new QLabel(QStringLiteral("Start page")), 2, 1);
        grid->addWidget(startPage, 2, 2);
        grid->addWidget(new QLabel(QStringLiteral("New tab page")), 3, 1);
        grid->addWidget(newTabPage, 3, 2);
        grid->addWidget(new QLabel(QStringLiteral("Default zoom on page")), 4, 1);
        grid->addWidget(zoom, 4, 2);
    }

    QGroupBox *fontGroup = new QGroupBox(QStringLiteral("Font"));
    {
        QGridLayout *grid = new QGridLayout;
        fontGroup->setLayout(grid);

        QSpinBox *minFont = new QSpinBox;
        QSpinBox *minLogicalFont = new QSpinBox;
        QSpinBox *defaultFont = new QSpinBox;
        QSpinBox *defaultFixedFont = new QSpinBox;

        grid->addWidget(new QLabel(QStringLiteral("Minimum font size")), 1, 1);
        grid->addWidget(minFont, 1, 2);
        grid->addWidget(new QLabel(QStringLiteral("Minimum logical font size")), 2, 1);
        grid->addWidget(minLogicalFont, 2, 2);
        grid->addWidget(new QLabel(QStringLiteral("Default font size")), 3, 1);
        grid->addWidget(defaultFont, 3, 2);
        grid->addWidget(new QLabel(QStringLiteral("Default fixed font size")), 4, 1);
        grid->addWidget(defaultFixedFont, 4, 2);
    }

    vboxLayout->addWidget(generalBox, 0);
    vboxLayout->addWidget(fontGroup, 0);
    vboxLayout->addWidget(new QWidget, 1);

    return widget;
}

QWidget *Preferences::createSearchEngineTab()
{
    QWidget *widget = new QWidget;
    QVBoxLayout *vboxLayout = new QVBoxLayout;
    widget->setLayout(vboxLayout);
    return widget;
}

QWidget *Preferences::createWebEngineTab()
{
    QWidget *widget = new QWidget;
    QVBoxLayout *vboxLayout = new QVBoxLayout;
    widget->setLayout(vboxLayout);
    return widget;
}
