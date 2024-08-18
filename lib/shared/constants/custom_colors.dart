import 'package:flutter/material.dart';

class CustomColors {
  Color _activePrimaryButton = Color.fromARGB(255, 0, 0, 0);
  Color _activeSecondaryButton = Color.fromARGB(255, 230, 230, 255);
  Color _gradientMainColor = Color(0xFF333333); // Darker gray
  Color _gradientSecColor = Color(0xFF666666); // Lighter gray
  Color _appBarMainColor = Color.fromARGB(255, 0, 0, 0);

  Color getActivePrimaryButtonColor() {
    return _activePrimaryButton;
  }

  Color getActiveSecondaryButton() {
    return _activeSecondaryButton;
  }

  Color getGradientMainColor() {
    return _gradientMainColor;
  }

  Color getGradientSecondaryColor() {
    return _gradientSecColor;
  }

  Color getAppBarMainColor() {
    return _appBarMainColor;
  }
}