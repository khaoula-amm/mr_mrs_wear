import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mr_mrs_wear/pages/HomePage.dart';
import 'package:mr_mrs_wear/pages/onboard/onboard_model.dart';


import '../constant.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'images/logoooF.png',
      text: "The 2023 \n Collection",
      desc:
          "The 2022 collection conjures the spirit of a contemporary habitat where the interior decor is also reflected in the outdoor spaces and embodiesan all-encompassing ",
      bg: Colors.white,
      button: const Color(0xFF4756DF),
    ),
    OnboardModel(
      img: 'images/logoooF.png',
      text: "Makeup Test",
      desc:
          "The 2022 collection conjures the spirit of a contemporary habitat where the interior decor Is also reflected in the outdoor spaces and embodies an all-encompassing style and timeless elegance untouched by fleeting fashions",
      bg: const Color(0xFF4756DF),
      button: Colors.white,
    ),
    OnboardModel(
      img: 'images/logoooF.png',
      text: "Huge Choices",
      desc:
          "The 2022 collection conjures the spirit of a contemporary habitat where the interior decor Is also reflected in the outdoor spaces and embodies an all-encompassing style and timeless elegance untouched by fleeting fashions",
      bg: Colors.white,
      button: const Color(0xFF4756DF),
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    // ignore: avoid_print
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    // ignore: avoid_print
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(screens[index].img,
              
                  ),
            
                  SizedBox(
                    height: 5.0,
                    child: ListView.builder(
                      itemCount: screens.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == index ? 25 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? kpink
                                      : kgrey,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ),
                  Text(
                    screens[index].text,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                 
                  ),
                  ),
                  Text(
                    screens[index].desc,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(
                    fontSize: 20.0,
                    color: const Color.fromARGB(255, 28, 28, 28),
                  ),
                  ),
                 Align(
                  alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () async {
                        // ignore: avoid_print
                        print(index);
                        if (index == screens.length - 1) {
                          await _storeOnboardInfo();
                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage())
                            );
                          }

                    _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceIn,
                   );
                },
                child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                decoration: BoxDecoration(
                color: index % 2 == 0 ? kpink : kpink,
                borderRadius: BorderRadius.circular(15.0),
                ),
              child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 22.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ],
              );
            }),
      ),
    );
  }
}