import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task_app/screens/home/view_model/home_screen_view_model.dart';

class HomeScreenViewModelImpl extends HomeScreenViewModel {
  Color backgroundColor = Colors.white;

  @override
  changeColor() {
    backgroundColor = Color.fromARGB(
      255,
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
  }
}
