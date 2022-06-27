import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'dio_http_file_service.dart';

class DioCacheManager extends CacheManager {
  static const key = 'dioCache';

  static late final DioCacheManager _instance;

  static DioCacheManager get instance => _instance;

  static void initialize(Dio client) {
    _instance = DioCacheManager._(client);
  }

  DioCacheManager._(Dio dio)
      : super(Config(key, fileService: DioHttpFileService(dio)));
}
