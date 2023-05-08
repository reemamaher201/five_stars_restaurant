import 'package:five_stars_restaurant/utils/colors.dart';
import 'package:five_stars_restaurant/widgets/app_column.dart';
import 'package:five_stars_restaurant/widgets/app_icon.dart';
import 'package:five_stars_restaurant/widgets/big_text.dart';
import 'package:five_stars_restaurant/widgets/expandable_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food4.jpg"),
              )),
            ),
          ),
          //icon widget
          Positioned(
            top: 30,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            top: 330,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Chinese Side",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BigText(text: "Introduce"),
                  const SizedBox(
                    height: 20,
                  ),
                  //expandable text widget
                const Expanded(
                   child: SingleChildScrollView(
                       child: ExpandableTextWidget(text: "fxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg",)),
                 ),
                ],
              ),
            ),
          ),


        ],
      ),
      bottomNavigationBar: Container(
        height: 110,
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(138, 246, 246, 246),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20 * 2),
              topRight: Radius.circular(20 * 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  BigText(text: "0"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.mainColor),
              child: BigText(
                text: "\$ | Add to cart",
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
