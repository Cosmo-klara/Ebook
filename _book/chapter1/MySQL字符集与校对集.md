# MySQL字符集与校对集

> 本章为知识点，无实验操作

### 字符集：用来定义MySQL存储字符串的方式

+ #### 查看字符集信息

```sql
    SHOW CHARSET;
```
+ #### 常用字符集

|字符集|最大长度|支持的语言字符|
|-----|-----|-----|
|latin1|1字节|西欧字符|
|gbk|2字节|简体和繁体中文、日文、韩文等|
|utf8|3字节|世界上绝大多数国家的文字|


### 校对集：用来定义比较字符串的方式，比如是否区分大小写等

+ #### 查看校对集信息：

```sql
    SHOW COLLATION;
```
+ #### 校对集组成：字符集名称_国家名/general_ci/cs/bin
    + ci：不区分大小写

    + cs：区分大小写

    + bin：以二进制方式比较

### 字符集和校对集的设置
+ #### 查看字符集相关变量:

```sql
    SHOW VARIABLES LIKE 'character%';
```
    
|Variable_name变量名 |说明|
|-----|-----|
|character_set_client |客户端字符集|
|character_set_connection |客户端和服务器连接用的字符集|
|character_set_database |默认数据库使用的字符集|
|character_set_filesystem |文件系统字符集|
|character_set_results |将查询结果返回给客户端使用的字符集|
|character_set_server |服务器默认字符集|
|character_set_system |服务器用来存储标识符的字符集|
|character_set_dir |安装字符集的目录|

+ #### 设置字符集:

可在创建数据库、数据表时指明数据库、数据表、字段的字符集和校对集，通过SET 变量名=值; 来更改，**修改只对当前会话有效**

```sql
    # 将服务器默认字符集设置为utf8;
    SET character_server = utf8;
```

同时更改客户机、链接和返回结果字符串：

```sql
    SET NAMES 字符集名;
```



