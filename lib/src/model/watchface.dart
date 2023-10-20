class WathfaceData {
  String? binUrl;
  String? hardwareVersion;
  String? name;
  String? preImageUrl;
  double? price;
  int? typeId;
  int? version;
  String? watchDesc;

  WathfaceData(
      {this.binUrl,
      this.hardwareVersion,
      this.name,
      this.preImageUrl,
      this.price,
      this.typeId,
      this.version,
      this.watchDesc});

  WathfaceData.fromJson(Map<String, dynamic> json) {
    binUrl = json['binUrl'];
    hardwareVersion = json['hardwareVersion'];
    name = json['name'];
    preImageUrl = json['preImageUrl'];
    price = json['price'];
    typeId = json['typeId'];
    version = json['version'];
    watchDesc = json['watchDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['binUrl'] = binUrl;
    data['hardwareVersion'] = hardwareVersion;
    data['name'] = name;
    data['preImageUrl'] = preImageUrl;
    data['price'] = price;
    data['typeId'] = typeId;
    data['version'] = version;
    data['watchDesc'] = watchDesc;
    return data;
  }
}
