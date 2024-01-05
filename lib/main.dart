//import 'package:flutter/cupertino.dart';
import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '2thweek/widget_2th_week.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
 
//   runApp( const MyAppFirstWeek());
// }
////[]
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Alarm.init(showDebugLogs: true);

  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: const ExampleAlarmHomeScreen(),
    ),
  );
}