import 'dart:convert';

import 'package:equatable/equatable.dart';

class RequestUserLogin extends Equatable {
     final String email;
     final String password;

  const RequestUserLogin({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
  RequestUserLogin copyWith({
    String? email,
    String? password,
  }) {
    return RequestUserLogin(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }
  factory RequestUserLogin.fromMap(Map<String, dynamic> map) {
    return RequestUserLogin(
      email: map['email'],
      password: map['password'],
    );
  }
  String toJson() => json.encode(toMap());
  factory RequestUserLogin.fromJson(String source) => RequestUserLogin.fromMap(json.decode(source));
  @override
  bool get stringify => true;
}

class ResponseUserLogin extends Equatable {
     
      final String token;

  const ResponseUserLogin({ required this.token});
      

  @override
  List<Object> get props => [token];

  ResponseUserLogin copyWith({
    String? token,
  }) {
    return ResponseUserLogin(
      token: token ?? this.token,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'token': token,
    };
  }
  factory ResponseUserLogin.fromMap(Map<String, dynamic> map) {
    return ResponseUserLogin(
      token: map['token'],
    );
  }
  String toJson() => json.encode(toMap());
  factory ResponseUserLogin.fromJson(String source) => ResponseUserLogin.fromMap(json.decode(source));
  @override
  bool get stringify => true;
 }
