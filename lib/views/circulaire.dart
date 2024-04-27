

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/timer_bloc.dart';
import 'peintre.dart';

class Cercle extends StatelessWidget {
  const Cercle({super.key});

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final percentage = duration / context.select((TimerBloc bloc) => 60);
    return CustomPaint(
      painter: Peintre(percentage),
      child: SizedBox(
        width: 200,
        height: 200,
        child: Center(
          child: Text(
            "$duration",
            style: const TextStyle(fontSize: 32, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
