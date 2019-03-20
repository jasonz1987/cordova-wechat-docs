---
layout: default
title: FAQ
nav_order: 4
permalink: docs/faq
---



# FAQ

## 为什么插件的登录方法不能获取到用户的昵称和头像？

微信的移动端登录是基于oauth2.0标准，是需要客户端和服务端来共同实现的，在整个流程里客户端的`auth`方法只是用来返回用户的`code`,然后把获取到的`code`通过调用微信的接口获取到access_token，再通过获取用户资料的接口获取到用户的资料。因为请求接口的时候需要传入应用的`app secret`,为了应用的安全，因此后面2步我们强烈不建议在客户端实现。



## 此插件和SocialSharing-PhoneGap-Plugin有什么不同？

`SocialSharing-PhoneGap-Plugin`调用的是系统级的分享接口，他支持的平台更多，但是功能有限。而我们的插件使用的是微信官方的sdk，所以在功能上和微信原生的sdk功能是一致的，功能会更加全面。



## 运行的时候提示"微信签名不一致"

确认微信的apk签名与开放平台填写的一致，可以通过[签名生成工具](https://res.wx.qq.com/open/zh_CN/htmledition/res/dev/download/sdk/Gen_Signature_Android2.apk)获取签名。

另外ionic默认debug模式下运行的apk与正式打包出来签名的apk签名是不一致的。



## 微信支付的时候提示"普通错误"

1）确保apk的签名与微信开放平台填写一致

2）检查服务端生成签名的时候的参数是否与文档一致，尤其是大小写和顺序问题。

3）通过[微信接口调试工具](https://pay.weixin.qq.com/wiki/tools/signverify/) 验证签名是否正确



## 分享、支付的时候跳转回app的时候闪退

如果你的`cordova-android`版本是7.0以上,出现上述情况的时候，可以通过以下方法解决。

1. 升级`cordova-plugin-wechat`到2.6.0版本以上；

2. 删除插件和平台，重新添加和编译；

3. 检查项目目录下    `platforms/android/app/src/com/jasonz/demo` ,其中`com/jasonz/demo`为你的报名路径下 是否存在`wxapi`文件夹,并且是否该文件夹下是否存在`EntryActivity.java` , `WXEntryActivity.java` , `WXPayEntryActivity.java`这三个文件。如果没有这个目录和3个文件，新建一个`wxapi`目录，把`plugins/cordova-plugin-wechat/src/android `下的这3个文件拷贝到`wrapi`目录下，并且修改文件内容的第一行`package __PACKAGE_NAME__` 为你的报名，例如：`package com.jasonz.demo` 即可。 

   

