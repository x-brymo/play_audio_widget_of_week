//import 'package:flutter/cupertino.dart';
import 'package:alarm/alarm.dart';
import 'package:easy_audio_player/helpers/init_just_audio_background.dart';
import 'package:easy_audio_player/models/notification_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_audio_widget_of_week/3thweek/widget_3th_of_week.dart';
import 'package:play_audio_widget_of_week/firstWeek/app.dart';
import '2thweek/widget_2th_week.dart';
////[MyAppFirstWeek]
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
 
//   runApp( const MyAppFirstWeek());
// }
////[ExampleAlarmHomeScreen]
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

//   await Alarm.init(showDebugLogs: true);

//   runApp(
//     MaterialApp(
//       theme: ThemeData(useMaterial3: false),
//       home: const ExampleAlarmHomeScreen(),
//     ),
//   );
// }

///[HomeScreen]
void main() async {
  // init the background service to display notifications while playing
  await initJustAudioBackground(NotificationSettings(androidNotificationChannelId: 'com.example.example'));
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}