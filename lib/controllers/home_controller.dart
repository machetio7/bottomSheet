import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  TextEditingController textController = TextEditingController();

  void selectedName(String name) {
    textController.text = 'Hello: $name';
    update();
  }
}
