import 'package:flutter/material.dart';
import 'package:test_task_app/screens/home/view_model/home_screen_view_model_impl.dart';
import 'package:test_task_app/widgets/container_text.dart';

class HomeAnimatedContainer extends StatelessWidget {
  const HomeAnimatedContainer({
    super.key,
    required HomeScreenViewModelImpl viewModelImpl,
    required this.opacity,
    required this.textColor,
  }) : _viewModelImpl = viewModelImpl;

  final HomeScreenViewModelImpl _viewModelImpl;
  final double opacity;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      color: _viewModelImpl.backgroundColor,
      child: Center(
        child: Opacity(
          opacity: opacity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerText(textColor: textColor,),
              Text(
                _viewModelImpl.backgroundColor.toString(),
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}