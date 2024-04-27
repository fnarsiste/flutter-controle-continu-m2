

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/timer_bloc.dart';

class Boutons extends StatelessWidget {
  const Boutons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...switch (state) {
              IntialState() => [
                FloatingActionButton(
                  child: const Icon(Icons.play_arrow),
                  onPressed: () => context
                      .read<TimerBloc>()
                      .add(TimerStarted(duration: state.duration)),
                ),
              ],
              RunningState() => [
                FloatingActionButton(
                  child: const Icon(Icons.pause),
                  onPressed: () {
                    context.read<TimerBloc>().add(const TimerPaused());
                  },
                ),
                FloatingActionButton(
                  child: const Icon(Icons.replay),
                  onPressed: () {
                    context.read<TimerBloc>().add(const TimerReset());
                  },
                ),
              ],
              PlayPauseState() => [
                FloatingActionButton(
                  child: const Icon(Icons.play_arrow),
                  onPressed: () {
                    context.read<TimerBloc>().add(const TimerResumed());
                  },
                ),
                FloatingActionButton(
                  child: const Icon(Icons.replay),
                  onPressed: () {
                    context.read<TimerBloc>().add(const TimerReset());
                  },
                ),
              ],
              CompletedState() => [
                FloatingActionButton(
                  child: const Icon(Icons.replay),
                  onPressed: () {
                    context.read<TimerBloc>().add(const TimerReset());
                  },
                ),
              ]
            },
          ],
        );
      },
    );
  }
}
