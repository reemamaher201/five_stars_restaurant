import 'package:five_stars_restaurant/utils/colors.dart';
import 'package:five_stars_restaurant/widgets/app_icon.dart';
import 'package:five_stars_restaurant/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 75,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Center(child: BigText(size: 26, text: "Chinese Side")),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food2.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const ExpandableTextWidget(
                    text:
                        "fxcgujyyyyyyyyyyyfxxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyxcgujyyyyyyyyyyyfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyycgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyygfxcgujyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 20 * 2.5, right: 20 * 2.5, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcon(
                    iconSize: 24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: Colors.black,
                  size: 20,
                ),
                const AppIcon(
                    iconSize: 24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
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
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
