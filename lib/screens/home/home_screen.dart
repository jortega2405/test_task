import 'package:flutter/material.dart';
import 'package:test_task_app/screens/home/components/animated_container_home.dart';
import 'package:test_task_app/screens/home/view_model/home_screen_view_model_impl.dart';
import 'package:test_task_app/utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenViewModelImpl _viewModelImpl = HomeScreenViewModelImpl();

  @override
  Widget build(BuildContext context) {
    Color textColor = ColorUtils.getTextColor(_viewModelImpl.backgroundColor);
    double opacity = 1.0;

    return GestureDetector(
      onTap: () {
        setState(() {
          opacity = 0.0;
          _viewModelImpl.changeColor();
          textColor = ColorUtils.getTextColor(_viewModelImpl.backgroundColor);
        });
        Future.delayed( const Duration(milliseconds: 300), () {
          setState(() {
            opacity = 1.0;
          });
        });
      },
      child: Scaffold(
        backgroundColor: _viewModelImpl.backgroundColor,
        body: HomeAnimatedContainer(
          viewModelImpl: _viewModelImpl,
          opacity: opacity,
          textColor: textColor
        ),
      ),
    );
  }
}

