// ignore: file_names
/// class
class RequestLogin {
  RequestLogin({
    String? mobileNumber,
  }) {
    _mobileNumber = mobileNumber;
  }

  RequestLogin.fromJson(dynamic json) {
    _mobileNumber = json['mobileNumber'];
  }

  String? _mobileNumber;

  String? get mobileNumber => _mobileNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mobileNumber'] = _mobileNumber;
    return map;
  }
}
