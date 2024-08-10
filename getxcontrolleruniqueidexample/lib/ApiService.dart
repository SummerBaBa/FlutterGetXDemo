import 'dart:convert';

import 'package:dio/dio.dart';
import 'MovieModel.dart';

class ApiService {
  static Future<List<MovieModel>> fetchMovie() async {
    try {
      final dio = Dio();
      var response = await Dio().get("http://apis.juhe.cn/fapig/douyin/billboard?type=hot_video&size=50&key=9eb8ac7020d9bea6048db1f4c6b6d028");
      if (response.statusCode == 200) {
      var jsonString = response.data['result'];
      return movieModelFromJson(json.encode(response.data["result"]));
    } else {
        // 可以在这里处理非200状态码的情况
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      print("Error: $e");
      throw Exception('Failed to load movies');
    }
  }
}
