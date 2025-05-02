sealed class TimerEvent {
  const TimerEvent();
}

/// TimerBloc에 타이머를 시작해야 함을 알린다.
final class TimerStarted extends TimerEvent {
  final int duration;
  const TimerStarted({required this.duration});
}

/// TimerBloc에 타이머를 일시 중지해야 함을 알린다.
final class TimerPaused extends TimerEvent {
  const TimerPaused();
}

/// TimerBloc에 타이머를 다시 시작해야 함을 알린다.
final class TimerResumed extends TimerEvent {
  const TimerResumed();
}

/// TimerBloc에 타이머를 원래 상태로 재설정해야 함을 알린다.
class TimerReset extends TimerEvent {
  const TimerReset();
}

/// TimerBloc에 틱이 발생하였고 이에 따라 상태를 업데이트해야 한다는 것을 알린다.
class TimerTicked extends TimerEvent {
  final int duraiton;
  const TimerTicked({required this.duraiton});
}
