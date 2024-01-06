part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}
class LoginLoading extends AuthState {
  final RequestUserLogin requestUserLogin ;

  const LoginLoading({required this.requestUserLogin});
}
class LoginLoaded extends AuthState {
  final ResponseUserLogin responseUserLogin;

  const LoginLoaded({required this.responseUserLogin});
}
class LoginError extends AuthState {
  final String messages ;

  const LoginError({required this.messages});
}
class RegisterLoading extends AuthState {
  final RequestUserRegiser requestUserRegiser;

  const RegisterLoading({required this.requestUserRegiser});
}
class RegisterLoaded extends AuthState {
  final ResponseUserRegister responseUserRegister;

  const RegisterLoaded({required this.responseUserRegister});
}
class RegisterError extends AuthState {
  final String messages;

  const RegisterError({required this.messages});
}



