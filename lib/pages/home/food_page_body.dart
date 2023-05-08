import 'package:dots_indicator/dots_indicator.dart';
import 'package:five_stars_restaurant/utils/colors.dart';
import 'package:five_stars_restaurant/widgets/big_text.dart';
import 'package:five_stars_restaurant/widgets/icon_and_text.dart';
import 'package:five_stars_restaurant/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

// ignore: duplicate_ignore
class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //slider section
      Container(
        color: null,
        height: 320,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      //dots
      DotsIndicator(
        dotsCount: 5,
        position: _currentPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),

      const SizedBox(
        height: 30,
      ),
      //popular text
      Container(
        margin: const EdgeInsets.only(
          left: 30,
        ),
        child:
        Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
          BigText(
            text: "Popular",
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: BigText(
              text: ".",
              color: Colors.black26,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 2),
            child: SmallText(text: "Food Pairing"),
          )
        ]),
      ),

     //list of food and images

     // SizedBox(
        //height: 1350,
        //child:
    ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    //image Section
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/food2.jpg"))),
                    ),
                    //text container
                    Expanded(
                      child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Nutritious fruit meal in china"),
                                const SizedBox(
                                  height: 10,
                                ),
                                SmallText(text: "With chinese characteristics"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    IconAndText(
                                        icon: Icons.circle_sharp,
                                        text: "Normal",
                                        iconColor: AppColors.mainColor),
                                    IconAndText(
                                        icon: Icons.location_on,
                                        text: "1.7km",
                                        iconColor: Colors.green),
                                    IconAndText(
                                        icon: Icons.access_time_rounded,
                                        text: "32min",
                                        iconColor:
                                            Color.fromARGB(255, 247, 58, 6)),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              );
            }),
      //),
    ],
    );
  }

  Widget _buildPageItem(int position) {
    Matrix4 matrix = Matrix4.identity();

    if (position == _currentPageValue.floor()) {
      var currentScale =
          1 - (_currentPageValue - position) * (1 - _scaleFactor);
      var currentTransform = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransform, 0);
    } else if (position == _currentPageValue.floor() + 1) {
      var currentScale = _scaleFactor +
          (_currentPageValue - position + 1) * (1 - _scaleFactor);
      var currentTransform = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransform, 0);
    } else if (position == _currentPageValue.floor() - 1) {
      var currentScale =
          1 - (_currentPageValue - position) * (1 - _scaleFactor);
      var currentTransform = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransform, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: position.isEven
                ? const Color.fromARGB(255, 244, 199, 128)
                : const Color.fromARGB(219, 246, 127, 35),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/food2.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5)),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  )
                ]),
            child: Container(
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese side"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "4.5"),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "1234"),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "Comments"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconAndText(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: AppColors.mainColor),
                      IconAndText(
                          icon: Icons.location_on,
                          text: "1.7km",
                          iconColor: Colors.green),
                      IconAndText(
                          icon: Icons.access_time_rounded,
                          text: "32min",
                          iconColor: Color.fromARGB(255, 247, 58, 6)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
