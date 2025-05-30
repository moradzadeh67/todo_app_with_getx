import 'package:get/get.dart';
import 'package:todo_app_with_getx/pages/add_task_screen.dart';

import '../pages/home_screen.dart';

class Routes {
  static List<GetPage> get pages => [
    GetPage(name: '/homescreen', page: () => const HomeScreen()),
    GetPage(name: '/addscreen', page: () => const AddTaskScreen()),
  ];
}
