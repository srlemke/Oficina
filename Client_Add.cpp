#include "Database.h"
#include "QtSql"
#include "QMessageBox"

#include "Client_Add.h"
#include "ui_Client_Add.h"
#include "Main_Window.h"

Client_Add::Client_Add(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Client_Add)
{
    ui->setupUi(this);
    Set_Emoticon();
}

Client_Add::~Client_Add()
{
    delete ui;
}

void Client_Add::Set_Emoticon()
{
    QPixmap glasses(":/emoticons/face-glasses.png");
    ui->lbl_Emoticon->setPixmap(glasses);
}

bool Client_Add::Verify_Empty_Fields_on_Form()
{
    if (   ui->line_Name->text() == ""
           ||ui->line_Address->text() == ""
           ||ui->line_City->text() == ""
           ||ui->line_Personal_ID->text() == ""
           ||ui->line_CPG->text() == ""
           ||ui->line_Phone->text() == ""
           )
    {
        ui->lbl_feedback->setText(tr("All fields need to be filled!"));
        QPixmap crying(":/emoticons/face-crying.png");
        ui->lbl_Emoticon->setPixmap(crying);
        ui->line_Name->setFocus();
        return false;
    }
    //Only returns true when all the fields are filled.
    return true;
}

void Client_Add::Clear_Form(){
        ui->line_Name->setText("");
        ui->line_Address->setText("");
        ui->line_City->setText("");
        ui->line_Personal_ID->setText("");
        ui->line_CPG->setText("");
        ui->line_Phone->setText("");
        ui->lbl_feedback->setText("");
        Set_Emoticon();
}

void Client_Add::on_btn_Add_Client_accepted()
{
    if(Verify_Empty_Fields_on_Form()){
        QSqlQuery query;
        query.prepare("INSERT INTO"
                      " Client (Client_Name, Client_Address, Client_City, Client_CPG, Client_ID_Number, Client_Phone)"
                      " VALUES (:Client_Name, :Client_Address, :Client_City, :Client_CPG, :Client_ID_Number, :Client_Phone)");

        query.bindValue(":Client_Name", ui->line_Name->text());
        query.bindValue(":Client_Address", ui->line_Address->text());
        query.bindValue(":Client_City", ui->line_City->text());
        query.bindValue(":Client_CPG", ui->line_CPG->text());
        query.bindValue(":Client_ID_Number", ui->line_Personal_ID->text());
        query.bindValue(":Client_Phone", ui->line_Phone->text());

        if (query.exec() == false){
            qDebug() << query.lastError();
            QMessageBox::critical(this, tr("Error!"), query.lastError().text() + ". Class: addclient.cpp51");
        }else{
            ui->lbl_feedback->setText(ui->line_Name->text() + tr(" added!"));
            QPixmap cool(":/emoticons/face-cool.png");
            ui->lbl_Emoticon->setPixmap(cool);
            QMessageBox::information(this, tr("Success!"), ui->line_Name->text() + tr(" added"));
            close();
            //Clear_Form();
        }
    }
}

void Client_Add::on_btn_Add_Client_rejected()
{
    close();
}
