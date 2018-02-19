## 错误码解析

### 第一位

- `J`: 使用由Jokin定制开发的框架。
- `T`: 使用`Twocola-php`框架。

### 字母除第一位与最后两位

- `PC`: Privacy Cloud。

*表示项目*

### 字母倒数第二位

- `U`: `Update` 表示更新过程中出现的错误。
- `A`: `Api` 表示Api报错。

*表示出错时的任务状态*

### 字母最后一位

- `D`: `Danger` 表示高危错误。
- `F`: `Fatal` 表示底层异常错误。
- `E`: `Error` 表示常见错误。

## 错误码一览

**推荐方案代码请往下翻阅**

|错误码|起始版本|终止版本|解释|推荐方案|
|:-:|:-:|:-:|:-:|
|JPCUD01|`1.3.2`|`up-to-date`|无法读取版本信息|重新安装程序|
|JPCUD02|`1.3.2`|`up-to-date`|缺少升级所需参数|重新配置或重新安装程序|
|JPCUD03|`1.4.0`|`up-to-date`|非升级对应版本|取消升级|
|JPCUD04|`1.3.2`|`up-to-date`|无法还原|`PCS-1`|
|JPCUD05|`1.4.0`|`up-to-date`|无法生成备份|检查根目录是否有读写权限|
|JPCUD06|`1.4.0`|`up-to-date`|升级文件下载失败|请检查网络或提交反馈|
|JPCUD07|`1.4.0`|`up-to-date`|升级文件校验失败|请稍候重试或提交反馈|
|JPCUD08|`1.4.0`|`up-to-date`|升级文件放置失败|请检查根目录是否拥有读写权限|
|JPCUD09|`1.4.0`|`up-to-date`|打开升级文件包失败|请检查根目录是否拥有读写权限|
|JPCUD10|`1.4.0`|`up-to-date`|展开升级文件包失败|请检查根目录是否拥有读写权限|
|JPCAE00|`1.4.0`|`up-to-date`|无效的API访问请求|使用正确的API接口|
|JPCAE01|`1.4.0`|`up-to-date`|提交的数据不合法|按指定格式提交信息|
|JPCAE02|`1.4.0`|`up-to-date`|获取`Domain`失败|重新填写相关安全信息|
|JPCAE03|`1.4.15`|`up-to-date`|获取`Bucket`失败|重新填写相关安全信息|
|JPCAD01|`1.4.3`|`up-to-date`|删除备份文件失败|请检查根目录是否拥有读写权限|
|JPCAD02|`1.4.3`|`up-to-date`|找不到备份文件|请检查根目录是否拥有读写权限|
|JPCAD03|`1.4.0`|`up-to-date`|设置文件丢失|请检查根目录是否拥有读写权限|
|JPCAD04|`1.4.3`|`up-to-date`|设置文件无法写入|请检查根目录是否拥有读写权限|

## 解决方案一览

- `PCS-1`
  - 来源：`JPCD04`
  - 检查入口文件同级目录下是否存在`_pcbkup.zip`文件。
  - 若不存在，则重新安装。
  - 若存在，请检查其完整性（是否能正常解压）。
  - 若可解压，请解压至其所在目录（当前目录）。
  - 不可解压请重新安装。
  - 常见：非`1.3.1`版本升级`1.3.2`版本导致。

---

Privacy Cloud 维运团队