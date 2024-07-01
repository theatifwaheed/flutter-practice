import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  ValueNotifier<int> counter = ValueNotifier<int>(0);

  void incrementCounter() => counter.value++;
}
