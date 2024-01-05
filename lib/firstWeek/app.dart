import 'package:flutter/cupertino.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import 'widget/timer_basic.dart';
import 'widget/timer_frame.dart';



class MyAppFirstWeek extends StatelessWidget {
  const MyAppFirstWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
      ),
      home: CupertinoPageScaffold(
        child: SafeArea(
          minimum: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              TimerFrame(
                description: 'Customized Timer Countdown',
                timer: TimerBasic(
                  format: CountDownTimerFormat.daysHoursMinutesSeconds,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TimerFrame(
                inverted: true,
                description: 'without seconds',
                timer: TimerBasic(
                  format: CountDownTimerFormat.daysHoursMinutes,
                  inverted: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TimerFrame(
                description: 'whitout minutes & seconds',
                timer: TimerBasic(
                  format: CountDownTimerFormat.daysHours,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TimerFrame(
                inverted: true,
                description: 'only days',
                timer: TimerBasic(
                  format: CountDownTimerFormat.daysOnly,
                  inverted: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TimerFrame(
                description: 'only hours',
                timer: TimerBasic(
                  format: CountDownTimerFormat.hoursOnly,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TimerFrame(
                inverted: true,
                description: 'only minutes',
                timer: TimerBasic(
                  format: CountDownTimerFormat.minutesOnly,
                  inverted: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TimerFrame(
                description: 'only seconds',
                timer: TimerBasic(
                  format: CountDownTimerFormat.secondsOnly,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}