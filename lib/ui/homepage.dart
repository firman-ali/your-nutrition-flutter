import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:your_nutrition/helper/responsive_helper.dart';
import 'menupage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(),
              child: Image.network(
                "https://images.unsplash.com/photo-1588315028888-0e1da9fa090f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1374&q=80",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.1)
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 500),
                      child: const Text(
                        "YOUR NUTRITION",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    FadeInDown(
                      delay: const Duration(milliseconds: 50),
                      duration: const Duration(milliseconds: 800),
                      child: Text(
                        "Let's start a Healthy Life Starting From Taking Care of Your Nutrition",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    FadeInLeft(
                      delay: const Duration(milliseconds: 100),
                      duration: const Duration(milliseconds: 1000),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                PageRouteBuilder(
                                  transitionDuration:
                                      const Duration(seconds: 2),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secanimation,
                                      Widget child) {
                                    animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.fastLinearToSlowEaseIn,
                                    );
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(1, 0),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (BuildContext context,
                                          Animation<double> animation,
                                          Animation<double> secanimation) =>
                                      const MenuPage(),
                                ),
                                (route) => false,
                              );
                            },
                            color: Colors.orange,
                            padding: const EdgeInsets.only(
                              right: 5,
                              left: 25,
                              top: 5,
                              bottom: 5,
                            ),
                            child: ResponsiveWidget(
                              mobile: NextButton(
                                width: size.width * 0.4,
                                height: 40.0,
                              ),
                              web: NextButton(
                                width: size.width * 0.2,
                                height: 40.0,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  final double width;
  final double height;

  const NextButton({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Get Started',
            style: TextStyle(
              color: Colors.orange.shade50,
              fontSize: 16,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.orange.shade300,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.orange.shade100,
            ),
          ),
        ],
      ),
    );
  }
}
