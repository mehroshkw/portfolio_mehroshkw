extension IntPrimitiveExtension on int {
  String formatDuration() {
    int minutes = this ~/ 60;
    int remainingSeconds = this % 60;

    String minutesString = minutes < 10 ? '0$minutes' : '$minutes';
    String secondsString = remainingSeconds < 10 ? '0$remainingSeconds' : '$remainingSeconds';

    return '$minutesString:$secondsString';
  }
}
