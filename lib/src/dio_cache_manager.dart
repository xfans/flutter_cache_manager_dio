import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'dio_http_file_service.dart';

class DioCacheManager extends CacheManager {
  static const key = 'dioCache';

  static DioCacheManager _instance;

  factory DioCacheManager(Dio dio) {
    if (_instance == null) {
      _instance = DioCacheManager._(dio);
    }
    return _instance;
  }

  DioCacheManager._(Dio dio)
      : super(Config(key, fileService: DioHttpFileService(dio)));
}
