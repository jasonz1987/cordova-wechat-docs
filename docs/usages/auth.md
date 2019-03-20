---
layout: default
title: 登录
parent: 使用方法
nav_order: 4
---


#  登录授权

`auth`方法用来检测微信客户端是否安装。

```javascript
var scope = "snsapi_userinfo",
    state = "_" + (+new Date());

Wechat.auth(function (installed) {
    alert("Wechat installed: " + (installed ? "Yes" : "No"));
}, function (reason) {
    alert("Failed: " + reason);
});
```

* 注：微信登录授权只是为了获取用户的code信息，如果要获取用户的access_token和用户资料，请参照微信登录认证的流程。
