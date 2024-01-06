import 'dart:convert';

import 'package:equatable/equatable.dart';

class RequestUserRegiser extends Equatable {
 
  final String email;
  final String password;

  const RequestUserRegiser({
    required this.email,
    required this.password,
  });
  

  @override
  List<Object> get props => [ email, password];
  RequestUserRegiser copyWith({
    String? email,
    String? password,
  }) {
    return RequestUserRegiser(
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
  factory RequestUserRegiser.fromMap(Map<String, dynamic> map) {
    return RequestUserRegiser(
      email: map['email'],
      password: map['password'],
    );
  }
  String toJson() => json.encode(toMap());
  factory RequestUserRegiser.fromJson(String source) => RequestUserRegiser.fromMap(json.decode(source));
  @override
  bool get stringify => true;
}

class ResponseUserRegister extends Equatable {
      final int id;
      final String token;

  const ResponseUserRegister({
    required this.id,
    required this.token,
  });
      

  @override
  List<Object> get props => [id, token];
  ResponseUserRegister copyWith({
    int? id,
    String? token,
  }) {
    return ResponseUserRegister(
      id: id ?? this.id,
      token: token ?? this.token,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'token': token,
    };
  }
  factory ResponseUserRegister.fromMap(Map<String, dynamic> map) {
    return ResponseUserRegister(
      id: map['id'],
      token: map['token'],
    );
  }
  String toJson() => json.encode(toMap());
  factory ResponseUserRegister.fromJson(String source) => ResponseUserRegister.fromMap(json.decode(source));
  @override
  bool get stringify => true;
 }
