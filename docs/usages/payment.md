---
layout: default
title: 支付
parent: 使用方法
nav_order: 5
---



# 发起支付

`sendPaymentRequest`方法用来唤起微信客户端进行支付请求。

[微信官方文档](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=open1419317780&token=&lang=zh_CN)

## 参数说明

发起支付的参数建议由服务端调用微信统一下单接口返回给app端。

## 示例代码

```javascript
 var params = {
   partnerid: '10000100', // merchant id
   prepayid: 'wx201411101639507cbf6ffd8b0779950874', // prepay id
   noncestr: '1add1a30ac87aa2db72f57a2375d8fec', // nonce
   timestamp: '1439531364', // timestamp
   sign: '0CB01533B8C1EF103065174F50BCA001', // signed string
 };

 Wechat.sendPaymentRequest(ret.data, function () {
   alert("Success");
 }, function (reason) {
   alert("Failed: " + reason);
 });
```

