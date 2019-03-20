---
layout: default
title: 检查是否安装
parent: 使用方法
nav_order: 2
---

#  检查安装

`isInstalled`方法用来检测微信客户端是否安装。

```javascript
Wechat.isInstalled(function (installed) {
    alert("Wechat installed: " + (installed ? "Yes" : "No"));
}, function (reason) {
    alert("Failed: " + reason);
});
```