# Futter_cache_manager_dio

[![flutter_cache_manager_dio](https://img.shields.io/pub/v/flutter_cache_manager_dio)](https://pub.dev/packages/flutter_cache_manager_dio)

Language: [English](README.md) | [中文简体](README-zh.md)

使用 [dio](https://pub.dev/packages/dio) 的flutter_cache_manager

## Getting Started

使用dio实现 [flutter_cache_manager](https://pub.dev/packages/flutter_cache_manager)
类似 [flutter_cache_manager_firebase](https://pub.dev/packages/flutter_cache_manager_firebase)

```dart
var dio = Dio();
dio.interceptors.add(LogInterceptor(responseBody: false));
DioCacheManager.initialize(dio);
var file = await DioCacheManager.instance.getSingleFile(url);
```
可以使用dio的拦截器等.

[cached_network_image](https://pub.dev/packages/cached_network_image) 可以使用

就像glide使用okhttp
```dart
CachedNetworkImage(
    cacheManager: DioCacheManager.instance,
    imageUrl: url,
    placeholder: (context, url) => CircularProgressIndicator(),
    errorWidget: (context, url, error) => Container(
    child: Text(
        'error',
        ),
    ),
);
'''
