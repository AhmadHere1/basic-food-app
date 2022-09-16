import 'package:basics/resources/colors.dart';
import 'package:basics/responsives/dimensions.dart';
import 'package:basics/widgets/app_column_reuse.dart';
import 'package:basics/widgets/big_text.dart';
import 'package:flutter/material.dart';
import '../../widgets/bottom_buttons.dart';
import '../../widgets/expandable_text.dart';
import '../../widgets/icon_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //big hero section
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularImgSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/9.jpg'),
              )),
            ),
          ),
          //showing to icons on hero Section
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          //big bottom container
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularImgSize - 20,
            child: Container(
                height: Dimensions.popularImgSize,
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.width15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: 'Russian Salad'),
                    SizedBox(height: Dimensions.height20),
                    BigText(text: 'Introduction'),
                    SizedBox(height: Dimensions.height20),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableText(
                            text:
                                'Life is so shockingly dangerous No one can be happy all the time. and this is pretty alarming for humans to be this much concerned over something in this manner this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over  much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something this much concerned over something'),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      //property of scaffold
      bottomNavigationBar: BottomButtons(),
    );
  }
}
