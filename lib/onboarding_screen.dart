import 'package:event_book_app/data.dart';
import 'package:event_book_app/gen/assets.gen.dart';
import 'package:event_book_app/home_screen.dart';
import 'package:event_book_app/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<OnboardItem> onboard_item = AppDataBase.onboarditem;
  late final PageController _pageController;
  late final PageController _pageController2;

  // ignore: non_constant_identifier_names
  int page_index = 0;

  @override
  void initState() {
    super.initState();
    _pageController2 = PageController();
    _pageController = PageController();
    _pageController.addListener(() {
      if (page_index != _pageController.page!.round()) {
        setState(() {
          page_index = _pageController.page!.round();
        });
      }
      _pageController2.addListener(() {
        if (page_index != _pageController2.page!.round()) {
          setState(() {
            page_index = _pageController2.page!.round();
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 0,
              
                left: 20,
                right: 20,
                child: Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      _pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate);
                    },
                    controller: _pageController2,
                    itemCount: onboard_item.length,
                    itemBuilder: (context, index) {
                      // ignore: non_constant_identifier_names
                      final OnboardItems = onboard_item[index];
                      return Image.asset(
                      'assets/img/${OnboardItems.ImageName}.png',width: 90,height: 100,
                      // fit: BoxFit.cover,
                      );
                     
                    },
                  ),
                )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 288,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        itemCount: onboard_item.length,
                        controller: _pageController,
                        onPageChanged: (index) {
                          _pageController2.animateToPage(index,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.decelerate);
                        },
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final onboardItems = onboard_item[index];
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' ${onboardItems.title}',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '${onboardItems.caption}',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pushReplacement(
                                  CupertinoPageRoute(
                                    builder: (context) => const SigninScreen(),
                                  ),
                                );
                              });
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SmoothPageIndicator(
                            effect: const ScrollingDotsEffect(
                              dotColor: Colors.white54,
                              activeDotColor: Colors.white,
                            ),
                            controller: _pageController,
                            count: onboard_item.length,
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              setState(() {
                                if (page_index == onboard_item.length - 1) {
                                  Navigator.of(context).pushReplacement(
                                    CupertinoPageRoute(
                                      builder: (context) => SigninScreen(),
                                    ),
                                  );
                                } else {
                                  _pageController.animateToPage(
                                    page_index + 1,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.decelerate,
                                  );
                                  _pageController2.animateToPage(page_index + 1,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.decelerate);
                                }
                              });
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 3 + 18,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white,
                      Colors.white10,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
