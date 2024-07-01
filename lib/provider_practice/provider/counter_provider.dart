import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  /// This can be used to toggle Visibility of Eye on Password Field.
  ValueNotifier<int> counter = ValueNotifier<int>(0);

  void incrementCounter() => counter.value++;
}
