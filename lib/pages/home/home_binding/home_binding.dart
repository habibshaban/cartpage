import 'package:get/instance_manager.dart';
import 'package:tabsi/pages/home/home_controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
