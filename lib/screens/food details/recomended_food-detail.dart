// ignore_for_file: avoid_unnecessary_containers

import 'package:basics/responsives/dimensions.dart';
import 'package:basics/widgets/big_text.dart';
import 'package:basics/widgets/bottom_button_upper.dart';
import 'package:basics/widgets/icon_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottom_buttons.dart';
import '../../widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        //we are using this for getting different desired effects
        //and for using this other purposes
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart),
              ],
            ),
            toolbarHeight: 75,
            pinned: true,
            //size from top while scrolling towards top
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
                width: double.maxFinite,
                child: Center(
                  child:
                      BigText(size: Dimensions.font26, text: 'Chinese Salad'),
                ),
              ),
            ),
            backgroundColor: Colors.amber,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/images/9.jpg',
                  width: double.maxFinite, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width10,
                    right: Dimensions.width10,
                  ),
                  child: ExpandableText(
                    text:
                        'Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        BottomButtons(), //custom button i made for using again again
        BottomButtonUpper(),
      ]),
    );
  }
}
