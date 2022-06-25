import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'dio_http_file_service.dart';

/// Use [DioCacheManager] if you want to download files from firebase storage
/// and store them in your local cache.
class DioCacheManager extends CacheManager {
  static const key = 'dioCache';

  static late final DioCacheManager? _instance;

  static DioCacheManager? test(Dio client) {
    if (_instance == null) {
      _instance = DioCacheManager._(client);
    }
    return _instance;
  }

  DioCacheManager._(Dio dio)
      : super(Config(key, fileService: DioHttpFileService(dio)));
}
