/*
 * CppDataBase.cpp
 *
 *  Created on: Mar 3, 2017
 *      Author: wujing
 */
#include"CppDataBase.h"

CppDataBase::CppDataBase(const char *host, const char *user, const char *passwd, const char *db) {
    this->host = host;
    this->user = user;
    this->passwd = passwd;
    this->db = db;

    this->bOpen = false;
    Open();
}

CppDataBase::~CppDataBase() {
    Close();
}

bool CppDataBase::GetConState() {
    return bOpen;
}

bool CppDataBase::Open() {
    if (!mysql_init(&mysql)) {
        cout<<"Failed   to   initate   MySQL   connection "<<endl;
        return false;
    }
    if (!mysql_real_connect(&mysql, host, user, passwd, db, 0, NULL, 0)) {
        cout<<"Failed   to   connect   to   MySQL:   Error: "<<mysql_error(&mysql)<<endl;
        return false;
    }
    cout<<"Logged   on   to   database   sucessfully"<<endl;
    bOpen = true;
    return bOpen;
}

void CppDataBase::Close() {
    if (bOpen) {
        mysql_close(&mysql);
        bOpen = false;
    }
}

bool CppDataBase::ExecuteSql(const char* chSql) {
    if (!GetConState())
        return false;

    if (mysql_real_query(&mysql, chSql, strlen(chSql)) == 0)
        return true;
}

MYSQL_RES * CppDataBase::OpenRecordset(const char* chSql) {
    MYSQL_RES *rs = NULL;
    if (ExecuteSql(chSql)) {
        rs = mysql_store_result(&mysql);
    }
    return rs;
}

void CppDataBase::FreeResult(MYSQL_RES *result) {
    if (result)
        mysql_free_result(result);
}



