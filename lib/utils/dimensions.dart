import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class Dimensions with ChangeNotifier {
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double pageView(BuildContext context) {
    return screenHeight(context) / 2.64;
  }

  static double pageViewContainer(BuildContext context) {
    return screenHeight(context) / 3.84;
  }

  static double pageViewTextContainer(BuildContext context) {
    return screenHeight(context) / 7.03;
  }

  static double height10(BuildContext context) {
    return screenHeight(context) / 84.8;
  }

  static double height20(BuildContext context) {
    return screenHeight(context) / 42.4;
  }
}
