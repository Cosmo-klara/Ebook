# MySQL tee(\T)命令

> 日志部分在第四章中介绍，涉及到MySQL的备份等操作。在此之前，如有必要，我们使用MySQL的tee命令来记录操作及运行结果。

### Linux tee 命令
Linux tee 命令用于读取标准输入的数据，并将其内容输出成文件。tee 指令会从标准输入设备读取数据，将其内容输出到标准输出设备，同时保存成文件，其语法如下所示。
```
    tee [-ai][--help][--version][文件...]
``` 
**参数详解：**
```
    -a 或 --append：附加到既有文件的后面，而非覆盖它。
    -i 或 --ignore-interrupts：忽略中断信号。
    --help：在线帮助。
    --version：显示版本信息。
```

### MySQL tee 命令

MySQL 扩展了 tee 命令，采用 tee 命令将远程执行结果保存到本地，具体可以采用以下两种形式。

#### 1. 在MySQL启动时添加参数：--tee=[your file]
```
    mysql -tee=D/record.txt -u root -p
```

#### 2. 在MySQL启动后，使用tee命令：tee [your file]; 开启记录功能，使用notee命令：notee; 关闭记录功能

```
    #  也可以使用\T D/record.txt
    tee D/record.txt
    # 中间的操作命令和执行结果都会保存到指定的文件record.txt中
    # 也可使用 \t
    notee
```

### 尝试使用tee命令

> 在登入后使用tee命令记录操作记录

1. 登入MySQL

    ``` 
        mysql -u root -p
    ```

2. 使用tee命令指定输出文件路径

    ``` 
        \T D:/I-X/Extel/record.txt
    ```

3. 查看已有数据库

    ```sql
        SHOW DATABASES;
    ```

4. 使用notee关闭输出

    ```
        \t
        # 退出MySQL
        \q
    ```

5. 查看 **[记录文件](record/record.txt)**