// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:basics/home/food_page_body.dart';
import 'package:basics/resources/colors.dart';
import 'package:basics/widgets/big_text.dart';
import 'package:basics/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        BigText(
                          text: 'Pakistan',
                          color: AppColors.mainColor,
                          size: 33,
                        ),
                        Row(
                          children: [
                            //this is a custom widget
                            SmallText(
                              text: 'Indiana Jonas',
                              color: Colors.black54,
                            ),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                            )
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.mainColor,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
