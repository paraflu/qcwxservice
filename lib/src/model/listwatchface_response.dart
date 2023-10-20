import 'package:qcwxservice/src/model/watchface.dart';

class ListWatchfaceResponse {
  List<WathfaceData>? data;
  String? message;
  int? retCode;

  ListWatchfaceResponse({this.data, this.message, this.retCode});

  ListWatchfaceResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <WathfaceData>[];
      json['data'].forEach((v) {
        data!.add(WathfaceData.fromJson(v));
      });
    }
    message = json['message'];
    retCode = json['retCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['retCode'] = retCode;
    return data;
  }
}
