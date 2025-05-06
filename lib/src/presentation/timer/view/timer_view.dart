import 'package:flutter/material.dart';
import 'package:flutter_bloc_timer/src/presentation/timer/widget/custom_background.dart';
import 'package:flutter_bloc_timer/src/presentation/timer/widget/timer_actions.dart';
import 'package:flutter_bloc_timer/src/presentation/timer/widget/timer_text.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Timer"),
      ),
      body: const Stack(
        children: [
          CustomBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TimerText(),
              TimerActions(),
            ],
          ),
        ],
      ),
    );
  }
}
