import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:qcwxservice/src/model/gettoken_response.dart';
import 'package:qcwxservice/src/model/listwatchface_response.dart';
import 'package:qcwxservice/src/model/watchface.dart';

class QcApi {
  final String url;
  final dio = Dio();

  QcApi([this.url = 'https://api1.qcwxkjvip.com/qcwx/']) {
    dio.options.baseUrl = url;
  }

  /// Retrieve token
  Future<String> getToken() async {
    final response = await dio.get('token/getToken?key=qcwx_android',
        options: Options(responseType: ResponseType.json));
    if (response.statusCode != 200) {
      throw response.statusMessage ?? 'Response code ${response.statusCode}';
    }
    final token = GetTokenResponse.fromJson(json.decode(response.data));
    return token.data!;
  }

  Future<List<WathfaceData>> getWatchfaceList(
      [String hardwareVersion = 'M78_V3.0']) async {
    final response = await dio.get(
      '/device-file/list-watch-face',
      queryParameters: {'hardwareVersion': hardwareVersion},
      options: Options(
        headers: {'token': await getToken()},
      ),
    );
    if (response.statusCode != 200) {
      throw response.statusMessage ?? 'Response code ${response.statusCode}';
    }
    final res = ListWatchfaceResponse.fromJson(response.data);
    return res.data!;
  }
}
