class GetTokenResponse {
  String? data;
  String? message;
  int? retCode;

  GetTokenResponse({this.data, this.message, this.retCode});

  GetTokenResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    message = json['message'];
    retCode = json['retCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data;
    data['message'] = message;
    data['retCode'] = retCode;
    return data;
  }
}
