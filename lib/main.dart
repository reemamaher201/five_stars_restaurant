import 'package:five_stars_restaurant/pages/home/main_food_page.dart';
import 'package:five_stars_restaurant/utils/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: AppColors.mainColor,
      ),
      home: const MainFoodPage(),
    );
  }
}
