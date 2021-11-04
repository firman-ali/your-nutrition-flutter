import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_nutrition/model/food_nutrition.dart';

class DetailScreen extends StatelessWidget {
  final FoodNutrition food;

  DetailScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        child: Stack(
          children: <Widget>[
            Container(
              width: size.width,
              height: size.height,
              margin: EdgeInsets.only(top: size.height * 0.35),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: FadeInUp(
                  delay: const Duration(milliseconds: 50),
                  duration: const Duration(milliseconds: 800),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: size.width <= 700
                                ? size.height * 0.05
                                : size.height * 0.15),
                        Center(
                          child: Text(
                            food.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'CarroisGothic',
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Text(
                          food.about,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Text(
                          food.description,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          children: [
                            const Icon(
                              Icons.local_fire_department,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Calories",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              food.calories,
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.rice_bowl,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Carbohydrates",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              food.carbohydrates,
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.square_grid_2x2,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Sugar",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              food.sugar,
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.bolt,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Protein",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              food.protein,
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.fastfood,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Fat",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              food.fat,
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Hero(
              tag: food.name,
              child: Container(
                height:
                    size.width <= 700 ? size.height * 0.4 : size.height * 0.5,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(food.imageAsset),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: const Color.fromRGBO(255, 165, 0, 0.8),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.orange.shade50,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
