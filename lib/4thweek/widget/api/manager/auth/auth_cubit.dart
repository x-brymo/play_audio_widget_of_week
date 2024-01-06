import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart'as http;
import 'package:play_audio_widget_of_week/4thweek/widget/api/string_.dart';
import 'package:play_audio_widget_of_week/4thweek/widget/model/user_login.dart';
import 'package:play_audio_widget_of_week/4thweek/widget/model/user_register.dart';
import 'package:ui_package/ui_package.dart' show ToastShow ;
part 'auth_state.dart';
late ResponseUserLogin responseUserLogin;
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

Future<void>login(String  email , String password)async{
  
   try {
  var data = {'email': email, 'password' : password};
   final response =await http.post(Uri.parse(ApiUrl.login),
   headers: {"Content-Type": "application/json"},
   body:   json.encode(data),
   );
     if(response.statusCode == 200){
      var userDate = jsonDecode(response.body)['data'];
      var allData = ResponseUserLogin.fromJson(userDate);
      print(allData);
      emit(LoginLoaded(responseUserLogin: responseUserLogin));
     }
   } catch (e) {
    emit(LoginError(messages: e.toString()));
    
     
   }
}

  
}
