import 'package:flutter/material.dart';

class HomeVM with ChangeNotifier {
  int counter = 0;
  addToCounter() {
    notifyListeners();
    counter++;
  }
}
