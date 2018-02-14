# 警告码查询

### 第一序列表示位置

- `R`: 根目录
- `L`: Lib目录
- `A`: API目录

## 警告码一览

|警告码|起始版本|终止版本|解释|文件意义|
|:-:|:-:|:-:|:-:|
|R-1|`1.4.3`|`up-to-date`|根目录存在`index.php.bak`|升级时产生的备份文件|
|R-2|`1.4.3`|`up-to-date`|根目录存在`_pcbkup.zip`|升级时产生的备份文件|
|R-3|`1.4.5`|`up-to-date`|根目录存在`_update.zip`|升级文件|

## FAQ

### 为什么要删除备份文件？

> 容易导致私密信息泄露。