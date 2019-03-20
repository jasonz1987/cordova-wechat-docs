---
layout: default
title: 调用
parent: 开始使用
nav_order: 2
---

# 调用

如果你使用的`ionic`框架，也可以通过native方式使用。

详情参考[wechat-native](https://ionicframework.com/docs/v3/)

定义

```typescript
declare let Wechat:any;
```

调用

```typescript
Wechat.somefunction(params,function(success){
	console.log("调用成功");
},function(err){
	console.log("调用失败");
});
```

