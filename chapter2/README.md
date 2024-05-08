# SQL语言
> Structure Query Language ( 结构化查询目标 ) ：用于访问和处理关系数据库的标准的计算机语言

> 本章为知识点，无实验操作

### 分类

#### 1. DDL：数据库、数据表操作

> Data Definition Language——数据定义语言, 用来定义数据库对象：数据库、表、列等。

**关键字：`CREATE`，`DROP`，`ALTER` 等**

#### 2. DML：增删改动表中的数据

> Data Manipulation Language——数据操纵语言, 用来对数据库中表的数据进行增删改动。

**关键字：`INSERT`，`DELETE`，`UPDATE` 等**

#### 3. DQL：查询表中的数据

> Data Query Language——数据查询语言, 用来查询数据库中表的记录（数据）。

**关键字：`SELECT`**

#### 4. DCL，TCL：管理用户，授权及事务

> Data Control Language——数据控制语言 / Transaction Control Language——事务控制语言, 用来定义数据库的访问权限和安全级别，及创建用户。

**关键字：`GRANT`，`REVOKE`，`ROLLBACK`，`COMMIT`等**

### 数据类型

+ #### 查看信息：

    + `HELP` 类型名  (或者用  `\?`类型名)

+ #### 数值类型

    + ##### 整数

        > `TINYINT`，`SMALLINT`，`MEDIUMINT`，`INT`，`BIGINT`

        + 补零：数据类型后加 `unsigned zerofill`

    + ##### 小数

        + 浮点数：`FLOAT`、`DOUBLE`
            > `FLOAT ( M,D )` 与 `DOUBLE ( M,D )`：M 表示数字总位数，D 表示小数点后的位数

        + 定点数：`DECIMAL`
            > `DECIMAL ( M,D )` ：M 表示数字总位数，D 表示小数点后的位数

    + ##### 时间和日期类型

        + `YEAR`：年份，YYYY

        + `DATE`：年月日，YYYY-MM-DD

        + `TIME`：时分秒，hh:mm:ss

        + `DATETIME`：年月日时分秒，YYYY-MM-DD hh:mm:ss

        + `TIMESTAMP`：时间戳类型，格式与 DATATIME 相同

            > 若不给该字段赋值或赋值为 `null`，则默认使用当前的系统时间对其自动赋值

    + ##### 字符串类型

        + `CAHR`：定长字符串，需指明长度 `CHAR(M)`

        + `VARCAHR`：变长字符串，需指明最大长度 `VARCHAR(M)`

        + `TEXT`：大文本数据（也叫富文本）

        + `ENUM`：枚举对象

        + `SET`：字符串对象

### 语法

1. SQL 语句可以单行或多行书写，以分隔符 ( 常用分号; ) 结尾。

2. **SQL 语句不区分大小写，但强烈建议遵循规范:**

    > 关键字和函数名称全部大写，数据库名称、表名称、字段名称等全部小写

### 注释

1. 单行注释：`--` （注意有一个空格）注释内容 或 `#` （这里不需要空格）注释内容（ `MySQL` 特有）

2. 多行注释：`/*注释*/`