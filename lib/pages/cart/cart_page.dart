import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/pages/home/home_controller/home_controller.dart';
import '/widgets/size_config.dart';

import './components/cartList.dart';
import './components/costumAppbar.dart';
import './components/pageTitle.dart';

class CartPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final cartlist = Get.put(HomeController());

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: [
          CostumAppBar(),
          PageTitle(),
          CartList(cartlist: cartlist),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(19),
                right: getProportionateScreenWidth(24)),
            child: Divider(
              thickness: 1.2,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' ${cartlist.carts.length} items',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                Text(
                  '\$1320.0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(15),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(5)),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(110),
                    vertical: getProportionateScreenWidth(10)),
                primary: Color(0xFFFF7643),
              ),
              onPressed: () {},
              child: Text(
                'Next',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
