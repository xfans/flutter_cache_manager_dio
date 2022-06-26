# Flutter_cache_manager_dio

[![flutter_cache_manager_dio](https://img.shields.io/pub/v/flutter_cache_manager_dio)](https://pub.dev/packages/flutter_cache_manager_dio)

Language: [English](README.md) | [中文简体](README-zh.md)

flutter_cache_manager with [dio](https://pub.dev/packages/dio)

## Getting Started

A Dio implementation for [flutter_cache_manager](https://pub.dev/packages/flutter_cache_manager)
Like [flutter_cache_manager_firebase](https://pub.dev/packages/flutter_cache_manager_firebase)

```dart
var dio = Dio();
dio.interceptors.add(LogInterceptor(responseBody: false));
DioCacheManager.initialize(dio);
var file = await DioCacheManager.instance.getSingleFile(url);
```
Can use Dio Interceptors etc.

[cached_network_image](https://pub.dev/packages/cached_network_image) can use

Like glide with okhttp
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
