---
layout: default
title: 登录
parent: 使用方法
nav_order: 4
---


#  登录授权

`auth`方法用来唤起微信客户端进行授权登录。

[微信官方文档](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=open1419317851&token=&lang=zh_CN)

## 参数说明

| 参数名 | 参数类型 | 是否必须 | 说明           |
| ------ | -------- | -------- | -------------- |
| scope  | string   | 是       | 授权域         |
| state  | string   | 是       | 标识符唯一即可 |

## 示例代码

```javascript
var scope = "snsapi_userinfo",
    state = "_" + (+new Date());

Wechat.auth(function (installed) {
    alert("Wechat installed: " + (installed ? "Yes" : "No"));
}, function (reason) {
    alert("Failed: " + reason);
});
```

