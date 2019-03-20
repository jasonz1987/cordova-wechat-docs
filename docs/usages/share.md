---
layout: default
title: 分享
parent: 使用方法
nav_order: 3
---

# 微信分享

[微信官方文档](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=open1419317332&token=&lang=zh_CN)

微信分享及收藏目前支持文字、图片、音乐、视频、网页、小程序共六种类型（海外应用支持网页、小程序类型分享）

 {:toc}


## 分享文字

### 参数说明

| 参数名称 | 参数类型 | 是否必须 | 说明                                                         |
| -------- | -------- | -------- | ------------------------------------------------------------ |
| text     | string   | 是       | 分享的文本内容                                               |
| scene    | int      | 否       | 分享的场景 TIMELINE朋友圈 SESSION会话 FAVORITE 收藏 默认朋友圈 |



### 示例代码

```javascript
Wechat.share({
  text: "这是分享的文字内容",
  scene: Wechat.Scene.TIMELINE
}, function () {
  alert("Success");
}, function (reason) {
  alert("Failed: " + reason);
});
```



## 分享链接



### 参数说明

| 参数名称    | 参数类型 | 是否必须 | 说明                                                         |
| ----------- | -------- | -------- | ------------------------------------------------------------ |
| title       | string   | 是       | 标题                                                         |
| description | string   | 是       | 描述                                                         |
| thumb       | string   | 是       | 缩略图（支持本地资源，远程资源，base64）                     |
| scene       | int      | 否       | 分享的场景 TIMELINE朋友圈 SESSION会话 FAVORITE 收藏 默认朋友圈 |



### 示例代码

```javascript
Wechat.share({
  message:{
    title: "这是分享的标题",
    description: "这是分享的描述",
    thumb: "www/assets/imgs/logo.png",
    media: {
      type: Wechat.Type.WEBPAGE,
      webpageUrl: "https://www.jason-z.com"
    }
  },
  scene: Wechat.Scene.TIMELINE  
}, function () {
  alert("Success");
}, function (reason) {
  alert("Failed: " + reason);
});
```





## 分享图片

### 参数说明

| 参数名称    | 参数类型 | 是否必须 | 说明                                                         |
| ----------- | -------- | -------- | ------------------------------------------------------------ |
| title       | string   | 是       | 标题                                                         |
| description | string   | 是       | 描述                                                         |
| thumb       | string   | 是       | 缩略图（支持本地资源，远程资源，base64）                     |
| media       | object   | 是       | 见下表                                                       |
| scene       | int      | 否       | 分享的场景 TIMELINE朋友圈 SESSION会话 FAVORITE 收藏 默认朋友圈 |



| 参数名称 | 参数类型 | 是否必须 | 说明                                       |
| -------- | -------- | -------- | ------------------------------------------ |
| type     | int      | 是       | 分享类型，固定值。                         |
| image    | string   | 是       | 分享图片（支持本地资源，远程资源，base64） |



### 示例代码

```javascript
 Wechat.share({
   message: {
     title: "这是分享的标题",
     description: "这是分享的描述",
     thumb: "www/assets/imgs/logo.png",
     media: {
       type: Wechat.Type.IMAGE,
       image: "https://www.jason-z.com/storage/test_image.jpg"
     }
   },
   scene: Wechat.Scene.TIMELINE
 }, function () {
   alert("Success");
 }, function (reason) {
   alert("Failed: " + reason);
 });
```



## 分享音乐



### 参数说明

| 参数名称    | 参数类型 | 是否必须 | 说明                                                         |
| ----------- | -------- | -------- | ------------------------------------------------------------ |
| title       | string   | 是       | 标题                                                         |
| description | string   | 是       | 描述                                                         |
| thumb       | string   | 是       | 缩略图（支持本地资源，远程资源，base64）                     |
| media       | object   | 是       | 见下表                                                       |
| scene       | int      | 否       | 分享的场景 TIMELINE朋友圈 SESSION会话 FAVORITE 收藏 默认朋友圈 |



| 参数名称     | 参数类型 | 是否必须 | 说明               |
| ------------ | -------- | -------- | ------------------ |
| type         | int      | 是       | 分享类型，固定值。 |
| musicUrl     | string   | 是       | 音频网页的URL地址  |
| musicDataUrl | string   | 是       | 音频数据的URL地址  |



### 示例代码

```javascript
 Wechat.share({
   message: {
     title: "这是分享的标题",
     description: "这是分享的描述",
     thumb: "www/assets/imgs/logo.png",
     media: {
       type: Wechat.Type.MUSIC,
       musicUrl: "https://www.jason-z.com",
       musicDataUrl: "https://www.jason-z.com/storage/test_audio.mp3"
     }
   },
   scene: Wechat.Scene.TIMELINE
 }, function () {
   alert("Success");
 }, function (reason) {
   alert("Failed: " + reason);
 });
```





## 分享视频

### 参数说明

| 参数名称    | 参数类型 | 是否必须 | 说明                                                         |
| ----------- | -------- | -------- | ------------------------------------------------------------ |
| title       | string   | 是       | 标题                                                         |
| description | string   | 是       | 描述                                                         |
| thumb       | string   | 是       | 缩略图（支持本地资源，远程资源，base64）                     |
| media       | object   | 是       | 见下表                                                       |
| scene       | int      | 否       | 分享的场景 TIMELINE朋友圈 SESSION会话 FAVORITE 收藏 默认朋友圈 |



| 参数名称 | 参数类型 | 是否必须 | 说明               |
| -------- | -------- | -------- | ------------------ |
| type     | int      | 是       | 分享类型，固定值。 |
| videoUrl | string   | 是       | 音频网页的URL地址  |



### 示例代码

```javascript
Wechat.share({
  message: {
    title: "这是分享的标题",
    description: "这是分享的描述",
    thumb: "www/assets/imgs/logo.png",
    media: {
      type: Wechat.Type.VIDEO,
      videoUrl: "https://www.jason-z.com/storage/test_video.mp4",
    }
  },
  scene: Wechat.Scene.TIMELINE
}, function () {
  alert("Success");
}, function (reason) {
  alert("Failed: " + reason);
});
```



## 分享小程序



### 参数说明

| 参数名称    | 参数类型 | 是否必须 | 说明                                     |
| ----------- | -------- | -------- | ---------------------------------------- |
| title       | string   | 是       | 标题                                     |
| description | string   | 是       | 描述                                     |
| thumb       | string   | 是       | 缩略图（支持本地资源，远程资源，base64） |
| media       |          | 是       | 见下表                                   |
| scene       | int      | 否       | 分享的场景 仅支持SESSION                 |



| 参数名称        | 参数类型 | 是否必须 | 说明                                               |
| --------------- | -------- | -------- | -------------------------------------------------- |
| type            | int      | 是       | 分享类型，固定值。                                 |
| webpageUrl      | string   | 是       | 兼容低版本的网页链接                               |
| userName        | string   | 是       | 小程序原始id                                       |
| path            | string   | 是       | 小程序页面路径                                     |
| hdImageData     | string   | 是       | 分享缩略图（支持url和base64）                      |
| withShareTicket | boolean  | 是       | 是否使用带shareTicket的分享                        |
| miniprogramType | int      | 是       | 小程序类型：RELEASE发布版 TEST测试版 PREVIEW体验版 |



### 示例代码

```javascript
Wechat.share({
  message: {
    title: "这是分享的标题",
    description: "这是分享的描述",
    thumb: "www/assets/imgs/logo.png",
    media: {
      type: Wechat.Type.MINI,
      webpageUrl: "https://www.jason-z.com", 
      userName: "gh_745127d80c0f",
      path: "pages/logs/logs", // 小程序的页面路径
      hdImageData: "https://www.jason-z.com/storage/test_image.jpg", // 程序新版本的预览图二进制数据 不超过128kb 支持 地址 base64 temp
      withShareTicket: true, // 是否使用带shareTicket的分享
      miniprogramType: Wechat.Mini.PREVIEW
    }
  },
  scene: Wechat.Scene.SESSION
}, function () {
  alert("Success");
}, function (reason) {
  alert("Failed: " + reason);
});
```



