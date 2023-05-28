import 'package:event_book_app/data.dart';
import 'package:event_book_app/gen/assets.gen.dart';
import 'package:event_book_app/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  final Theme = ThemeData;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}


class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    
    super.initState();
    _pageController.addListener(() { });
   if( page_index != _pageController.page!.round() ){
    setState(() {
      page_index =_pageController.page!.round();
    });
   }
  }
  
final onboard_item = AppDataBase.onboarditem;
late final PageController _pageController ;
 int page_index=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0, left: 40, right: 40, child: Assets.img.onboard1.image()),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 288,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                        itemCount: onboard_item.length,
                        controller: _pageController,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final onboard_items = onboard_item[index];
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(25,25,18,10),
                            child: Column(
                              children: [
                                Text(
                                    ' ${onboard_items.title}',style: Theme.of(context).textTheme.titleLarge,),
                                    Text('${onboard_items.caption}',style: Theme.of(context).textTheme.titleMedium,),
                                SizedBox(
                                  height: 25,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                           backgroundColor:
                                  MaterialStateProperty.all(Theme.of(context).primaryColor),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)), 
                          
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => HomeScreen(),));
                            });
                          },
                          child: const Text('Skip',style: TextStyle(fontSize: 18),),
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
                              backgroundColor:
                                  MaterialStateProperty.all(Theme.of(context).primaryColor),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            setState(() {
                             page_index == onboard_item.length -1 ? _pageController.animateToPage(page_index+1, duration: Duration(milliseconds: 100), curve: Curves.decelerate)
                             : Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => HomeScreen(),));
                            });
                          },
                          child: const Text(
                            'Next',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  )
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
                  ])),
            ),
          )
        ],
      ),
    ));
  }
}
