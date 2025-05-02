import 'package:equatable/equatable.dart';

sealed class TimerState extends Equatable {
  final int duration;
  const TimerState(this.duration);

  @override
  List<Object> get props => [duration];
}

/// 이 상태가 되면 사용자는 타이머 시작이 가능하다. (카운트 다운 시작 준비)
final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'TimerInitial { duraiton: $duration }';
}

/// 이 상태가 되면 사용자는 타이머를 다시 시작하고 타이머를 재설정 가능하다. (일시 정지 상태)
final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

/// 이 상태가 되면 사용자는 타이머를 일시 정지하고 재설정 가능하고 남은 시간도 볼 수 있다. (카운트 다운 시작)
final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'TimerRunProgress { duration: $duration }';
}

/// 이 상태가 되면 사용자가 타이머 재설정 가능하다. (남은 시간 0으로 완료 상태)
final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
