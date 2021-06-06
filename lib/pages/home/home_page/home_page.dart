import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '/pages/cart/cart_page.dart';
import '/pages/home/home_controller/home_controller.dart';
import '/widgets/size_config.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: Obx(
          () => FancyBottomNavigation(
            inactiveIconColor: Colors.grey,
            textColor: Colors.white,
            tabs: [
              TabData(iconData: Icons.home, title: 'Home'),
              TabData(iconData: Icons.search, title: 'Search'),
              TabData(iconData: Icons.shopping_bag_outlined, title: 'Cart'),
              TabData(iconData: Icons.favorite_border, title: 'Favorate'),
            ],
            onTabChangedListener: (position) {
              controller.currentIndex.value = position;
              controller.pageController.jumpToPage(position);
            },
            initialSelection: controller.currentIndex.value,
            key: controller.bottomNavigationKey,
          ),
        ),
        body: SizedBox.expand(
          child: PageView(
            physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
            children: [
              Container(
                child: Center(
                  child: Text('Home'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Search'),
                ),
              ),
              CartPage(),
              Container(
                child: Center(
                  child: Text('Favorate'),
                ),
              ),
            ],
            controller: controller.pageController,
          ),
        ),
      ),
    );
  }
}
