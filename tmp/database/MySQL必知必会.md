1. [第一章 了解SQL](#第一章-了解sql)
2. [第二章 MySQL简介](#第二章-mysql简介)
3. [第三章 使用MySQL](#第三章-使用mysql)
## 第一章 了解SQL
- 数据库(database): 保存有组织的数据的容器，通常是一个文件或是一组文件。
- 表(table): 某种特定类型数据的结构化清单。
- 模式(schema): 关于数据库和表的布局及特性的信息。
- 列(column): 表中的一个字段。所有表都是由一个或者多个列组成的。
- 数字类型(datatype): 所容许的数据的类型。每个表列都有相应的数据类型，它限制（或容许）该列中存储的数据。
- 行(row): 表中的一个记录
- 主键(primary key): 一列或者一组列，其值能够唯一区分表中每个行，并且不能为空。
## 第二章 MySQL简介
无
## 第三章 使用MySQL
1. MySQL的连接
    ```sh
    # 连接MySQL需要的信息有：
    # 主机名，本地为localhost
    # 端口号，默认为3306
    # 用户名，密码
    mysql -hhostname -uusername -ppassword
    ``` 
2. 选择数据库
    ```sql
    # 在对数据部操作前需要先选择数据库，使用use关键词
    USE databases;
    ```
3. 显示数据库或者数据表
   ```sql
   # 显示数据库
   SHOW DATABASES;

   # 在已选择数据库后，显示数据表
   SHOW TABLES;
   DESCRIBE\DESC database;
   
   # 在已选择数据库后，显示数据列
   SHOW COLUMNS FROM table;
   DESCRIBE\DESC table;

   # 显示广泛的服务器状态信息
   SHOW STATUS;

   # 显示建库或者建表语句
   SHOW CREATE DATABASE database;
   SHOW CREATE TABLE table;

   # 用来显示授予用户的安全权限
   SHOW GRANTS;

   # 用来显示服务器错误或警告消息
   SHOW ERRORS;
   SHOW WARNINGS;
   
    # HELP SHOW;
    显示SHOW支持的内容
   
   ```

   