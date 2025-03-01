import 'package:expenz1/onbord_screen/fist.dart';
import 'package:expenz1/onbord_screen/sheardsceens.dart';
import 'package:expenz1/pages/userdata.dart';
import 'package:expenz1/widject/bottem_Button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordScrren extends StatefulWidget {
  const OnbordScrren({super.key});

  @override
  State<OnbordScrren> createState() => _OnbordScrrenState();
}

class _OnbordScrrenState extends State<OnbordScrren> {
  bool now_page = false;
  bool prevew_page = false;
  bool end_page = false;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  //methanin onPageChanged meken den inna infex eka denawa
                  onPageChanged: (index) {
                    setState(() {
                      now_page = index == 3;
                      prevew_page = index > 0;
                      end_page = index == 3;
                    });
                  },
                  controller: _pageController,
                  children: [
                    Fist(),
                    Sheardsceens(
                      Title: "Gain total control \n of your money",
                      Discription:
                          "Become your own money manager \n  and make every cent count",
                      imageurl: "assets/images/onboard_1.png",
                    ),
                    Sheardsceens(
                      imageurl: "assets/images/onboard_3.png",
                      Title: "Know where your \n    money goes",
                      Discription:
                          "      Track your transaction easily,\n with categories and financial report ",
                    ),
                    Sheardsceens(
                      imageurl: "assets/images/onboard_2.png",
                      Title: "Planning ahead",
                      Discription:
                          "Setup your budget for each category \n               so you in control ",
                    ),
                  ],
                ),
                //slider iffect next page
                Container(
                  alignment: Alignment(0, 0.7),
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    effect: ExpandingDotsEffect(
                      dotColor: Color(0xff7F3DFF),
                      activeDotColor: Color(0xff7F3DFF),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _pageController.animateToPage(
                          _pageController.page!.toInt() + 1,
                          duration: Duration(microseconds: 400),
                          curve: Curves.linear,
                        );
                      },
                      child: SizedBox(
                        width: 300,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //2nd next button
                            prevew_page
                                ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 0,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _pageController.animateToPage(
                                        _pageController.page!.toInt() + 1,
                                        duration: Duration(microseconds: 400),
                                        curve: Curves.linear,
                                      );
                                    },
                                    child:
                                        !end_page
                                            ? BottemButton(
                                              width: 0.33,
                                              button_name:
                                                  now_page
                                                      ? "Get Started"
                                                      : "Next",
                                              butto_collor: Color(
                                                0xff7F3DFF,
                                              ).withOpacity(0.8),
                                            )
                                            : Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 50,
                                                  ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                              Userdata(),
                                                    ),
                                                  );
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        left: 0,
                                                      ),
                                                  child: BottemButton(
                                                    width: 0.55,
                                                    button_name:
                                                        now_page
                                                            ? "Get Started"
                                                            : "Next",
                                                    butto_collor: Color(
                                                      0xff7F3DFF,
                                                    ).withOpacity(0.8),
                                                  ),
                                                ),
                                              ),
                                            ),
                                  ),
                                )
                                : GestureDetector(
                                  onTap: () {
                                    _pageController.animateToPage(
                                      _pageController.page!.toInt() + 1,
                                      duration: Duration(microseconds: 400),
                                      curve: Curves.linear,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: BottemButton(
                                      width: 0.55,
                                      button_name: "Next",
                                      butto_collor: Color(
                                        0xff7F3DFF,
                                      ).withOpacity(0.8),
                                    ),
                                  ),
                                ),

                            //preview button
                            prevew_page
                                ? GestureDetector(
                                  onTap: () {
                                    _pageController.animateToPage(
                                      _pageController.page!.toInt() - 1,
                                      duration: Duration(microseconds: 400),
                                      curve: Curves.linear,
                                    );
                                  },
                                  child:
                                      end_page
                                          ? Text("")
                                          : BottemButton(
                                            width: 0.34,
                                            button_name: "preivew",
                                            butto_collor: Color(
                                              0xff7F3DFF,
                                            ).withOpacity(0.8),
                                          ),
                                )
                                : Text(""),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
