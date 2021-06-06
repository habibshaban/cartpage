import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tabsi/models/Carts.dart';

class HomeController extends GetxController {
  late List<Cart> _carts;
  var currentIndex = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();
  late PageController pageController;
  List<Cart> get carts => _carts;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
  }

  HomeController() {
    _carts = [
      Cart(
        id: 1,
        name: 'Nike Air Max 200',
        price: 240.0,
        image: 'assets/images/ps4_console_white_1.png',
        totalnum: 1,
      ),
      Cart(
        id: 2,
        name: 'Nike Air Max 97',
        price: 190.0,
        image: 'assets/images/ps4_console_white_2.png',
        totalnum: 2,
      ),
      Cart(
        id: 3,
        name: 'Nike Air Max 92607',
        price: 220,
        image: 'assets/images/ps4_console_white_3.png',
        totalnum: 1,
      ),
      Cart(
        id: 4,
        name: 'Nike Air Max 200',
        price: 240,
        image: 'assets/images/ps4_console_white_4.png',
        totalnum: 2,
      ),
    ];
  }

  deleteCart(int id) {
    _carts.removeWhere((element) => element.id == id);
    update();
  }
}
