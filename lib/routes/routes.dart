import 'package:get/get.dart';

import '../pages/home_screen.dart';

class Routes {
  static List<GetPage> get pages => [
    GetPage(name: '/homescreen', page: () => const HomeScreen()),
  ];
}
