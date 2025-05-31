import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:todo_app_with_getx/controllers/task_controller.dart';
import 'package:todo_app_with_getx/controllers/textfield_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskController());
    Get.put(TextFieldController());
  }
}
