#### MySQL安装教程
1. 解压MySQL zip安装包
   
2. 添加bin路径到用户变量Path中
   
3. 在解压路径添加配置文件
    ```ini
    [mysqld]
    # 设置3306端口
    port=3306
    # 设置mysql的安装目录
    basedir=C:\Users\Yang\envs\mysql-8.0.26-winx64
    # 设置mysql数据库的数据的存放目录
    datadir=C:\Users\Yang\envs\mysql-8.0.26-winx64\data
    # 允许最大连接数
    max_connections=200
    # 允许连接失败的次数。
    max_connect_errors=10
    # 服务端使用的字符集默认为utf8mb4
    character-set-server=utf8mb4
    # 创建新表时将使用的默认存储引擎
    default-storage-engine=INNODB
    # 默认使用“mysql_native_password”插件认证
    #mysql_native_password
    default_authentication_plugin=mysql_native_password
    [mysql]
    # 设置mysql客户端默认字符集
    default-character-set=utf8mb4
    [client]
    # 设置mysql客户端连接服务端时默认使用的端口
    port=3306
    default-character-set=utf8mb4
    ```

4. 初始化data路径，记录密码
    ```shell
    mysqld --initialize --console
    ```

5. 安装mysql服务
    ```shell
    mysqld --install
    ```

6. 启动mysql服务
    ```shell
    net start mysql
    ```
    
7. 修改默认密码
    ```shell
    ALTER USER 'root'@'localhost' IDENTIFIED BY '新密码';
    ```