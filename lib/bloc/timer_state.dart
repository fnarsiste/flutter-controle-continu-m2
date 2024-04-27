part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

final class IntialState extends TimerState {
  const IntialState(super.duration);
}

final class PlayPauseState extends TimerState {
  const PlayPauseState(super.duration);
}

final class RunningState extends TimerState {
  const RunningState(super.duration);
}

final class CompletedState extends TimerState {
  const CompletedState() : super(0);
}
