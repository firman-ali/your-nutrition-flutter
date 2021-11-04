import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:your_nutrition/helper/responsive_helper.dart';
import 'package:your_nutrition/model/food_nutrition.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detailpage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/bg1.jpg",
              height: size.height * 0.4,
              width: size.width,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.15),
            ),
            Positioned(
              top: size.height * 0.10,
              child: Container(
                padding: EdgeInsets.only(left: size.width * 0.05),
                child: const Text(
                  "Lets Start,\na Healthy Lifestyle !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "PatuaOne",
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: size.height * 0.78,
                width: size.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: size.height * 0.7,
                        width: size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: size.height * 0.07),
                          child: ResponsiveWidget(
                            mobile: ListWidget(size: size),
                            web: GridWidget(size: size),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.14,
                      width: size.width * 0.95,
                      decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: CardMenu(),
                    ),
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

class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GridView.builder(
        itemCount: foodNutritionList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final FoodNutrition food = foodNutritionList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(food: food);
                },
              ));
            },
            child: Stack(
              children: [
                Hero(
                  tag: food.name,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      food.imageAsset,
                      height: size.height * 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
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
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 500),
                        child: Text(
                          food.name,
                          style: const TextStyle(
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
                          food.about,
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: foodNutritionList.length,
      itemBuilder: (context, index) {
        final FoodNutrition food = foodNutritionList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DetailScreen(food: food);
              },
            ));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Hero(
                      tag: food.name,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          food.imageAsset,
                          height: size.height * 0.12,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeInRight(
                            delay: const Duration(milliseconds: 50),
                            duration: const Duration(milliseconds: 800),
                            child: Text(
                              food.name,
                              style: const TextStyle(
                                  fontSize: 22.0, fontFamily: "BebasNeue"),
                            ),
                          ),
                          const SizedBox(height: 4),
                          FadeInRight(
                            delay: const Duration(milliseconds: 50),
                            duration: const Duration(milliseconds: 800),
                            child: Text(
                              food.about,
                              maxLines: 3,
                              style: const TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 5),
    );
  }
}

class CardMenu extends StatefulWidget {
  @override
  _CardMenuState createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
  bool tap = true;
  @override
  Widget build(BuildContext context) {
    return tap
        ? InkWell(
            onTap: () {
              setState(() {
                tap = !tap;
              });
            },
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    "assets/images/ask.svg",
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                          "Tahukah kalian tubuh manusia setiap harinya membutuhkan asupan nutrisi seperti protein dan karbohidrat..."),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "(Tap Untuk Melihat rinciannya)",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : InkWell(
            onTap: () {
              setState(() {
                tap = !tap;
              });
            },
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    "assets/images/ide.svg",
                    height: 70,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Text(
                      "Tubuh manusia memerlukan asupan protein sebanyak 46 - 56 gram dan 225-325 gram karbohidrat sehari.",
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
