import 'package:flutter/material.dart';

class HomeVM with ChangeNotifier {
  int topDownM = 0;
  int counter = 0;
  int righLefttM = 0;

  addToCounter() {
    notifyListeners();
    counter += 6;
  }

  topMove() {
    notifyListeners();
    topDownM += 6;
  }

  downMove() {
    notifyListeners();
    topDownM -= 6;
  }

  rightMove() {
    notifyListeners();
    righLefttM += 6;
  }

  leftMove() {
    notifyListeners();
    righLefttM -= 6;
  }
}
