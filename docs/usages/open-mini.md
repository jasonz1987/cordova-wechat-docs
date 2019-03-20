---
layout: default
title: 打开微信小程序
parent: 使用方法
nav_order: 2
---

# 打开微信小程序

[微信官方文档](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=21526646385rK1Bs&token=&lang=zh_CN)

`openMiniProgram`方法可以指定小程序的特定页面路径。使用前请确保移动应用已经关联了小程序。

如需小程序跳转回移动应用请参考[《小程序开发文档》](https://developers.weixin.qq.com/miniprogram/dev/api/launchApp.html)



## 参数说明

| 参数名          | 类型   | 是否必须 | 说明                                               |
| --------------- | ------ | -------- | -------------------------------------------------- |
| userName        | string | 是       | 小程序原始id                                       |
| path            | string | 否       | 小程序页面路径，不填默认进入首页                   |
| miniprogramType | string | 是       | 小程序类型：RELEASE发布版 TEST测试版 PREVIEW体验版 |



## 示例代码

```Javascript
var params = {
    userName: 'gh_d43f693ca31f',
    path: 'pages/index/index?name1=key1&name2=key2',
    miniprogramType: Wechat.Mini.RELEASE 
};

Wechat.openMiniProgram(params,function(data){
    console.log(data);
},function(){
    alert('error');
})
```

