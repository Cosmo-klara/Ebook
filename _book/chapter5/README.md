# 数据库管理

本章节将介绍如何使用数据库管理功能，包括创建与管理用户，管理用户权限、更改用户密码、数据库备份与恢复等。

关于 MySQL 的权限简单的理解就是 MySQL 允许你做你权利以内的事情，不可以越界。MySQL 服务器通过权限表来控制用户对数据库的访问，权限表存放在 mysql 数据库中，由 mysql_install_db 脚本初始化。

存储账户权限信息表主要有：user、db、tables_priv、columns_priv、procs_priv、proxies_priv这六张表（5.6之前还有host表，现在已经把host内容整合进user表）

| 权限 | 描述 |
| --- | --- |
| All/All Privileges | 全局或者全数据库对象级别的所有权限 |
| Alter | 修改表结构的权限，但必须要求有create和insert权限配合 |
| Alter routine | 修改或者删除存储过程、函数的权限 |
| Create | 创建新的数据库和表的权限 |
| Create routine | 允许创建存储过程、函数的权限 |
| Create tablespace | 允许创建、修改、删除表空间和日志组的权限 |
| Create temporary tables | 创建临时表权限 |
| Create user | 创建、修改、删除、重命名user |
| Create view | 创建视图 |
| Delete | 删除行数据 |
| drop | 删除数据库、表、视图的权限，包括truncate table命令 |
| Event | 查询，创建，修改，删除MySQL事件 |
| Execute | 执行存储过程和函数 |
| File | 在MySQL可以访问的目录进行读写磁盘文件操作，可使用的命令包括load data infile,select ,into outfile,load file()函数等 |
| Grant option | 授权或者收回给其他用户你给予的权限 |
| Index | 创建和删除索引 |
| Insert | 在表里插入数据 |
| Lock | 对拥有select权限的表进行锁定，以防止其他链接对此表的读或写 |
| Process | 允许查看MySQL中的进程信息，比如执行show processlist, mysqladmin processlist, show engine等命令 |
| Reference | 允许创建外键 |
| Reload | 执行flush命令，指明重新加载权限表到系统内存中 |
| Replication client | 执行show master status,show slave status,show binary logs命令 |
| Replication slave | 允许slave主机通过此用户连接master以便建立主从复制关系 |
| Select | 从表中查看数据 |
| Show databases | 通过执行show databases命令查看所有的数据库名 |
| Show view | 通过执行show create view命令查看视图创建的语句 |
| Shutdown | 关闭数据库实例，执行语句包括mysqladmin shutdown |
| Super | 允许执行一系列数据库管理命令，包括kill强制关闭某个连接命令，change master to创建复制关系命令，以及create/alter/drop server等命令 |
| Trigger | 允许创建，删除，执行，显示触发器的权限 |
| Update | 修改表中数据的权限 |
| Usage | 创建一个用户之后的默认权限，本身代表无权限 |