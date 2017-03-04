/*
 * CppDataBase.h
 *
 *  Created on: Mar 3, 2017
 *      Author: wujing
 */

#ifndef INC_CPPDATABASE_H_
#define INC_CPPDATABASE_H_

#include   <iostream>
#include   "/usr/include/mysql/mysql.h"
#include   <string.h>

using namespace std;

class CppDataBase {
public:
    CppDataBase(const char *host, const char *user, const char *passwd, const char *db);

    ~CppDataBase();
    bool ExecuteSql(const char* chSql);
    MYSQL_RES * OpenRecordset(const char* chSql);
    void FreeResult(MYSQL_RES *result);

private:
    MYSQL mysql;
    bool bOpen;
    const char *host;
    const char *user;
    const char *passwd;
    const char *db;


protected:
    bool Open();
    void Close();
    bool GetConState();
};



#endif /* INC_CPPDATABASE_H_ */
