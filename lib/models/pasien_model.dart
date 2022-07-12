class PasienModel {
  String? name;
  bool? haveOnGoingRequest;

  PasienModel({this.haveOnGoingRequest, this.name});

  PasienModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    haveOnGoingRequest = json['haveOnGoingRequest'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'haveOnGoingRequest': haveOnGoingRequest,
    };
  }
}
