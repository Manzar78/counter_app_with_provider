import 'package:flutter/foundation.dart';

class ExampleOneProvider with ChangeNotifier {
  double _value = 0.0;
  double get value => _value;

  set setValue(double val) {
    _value = val;
    notifyListeners();
  }
}
