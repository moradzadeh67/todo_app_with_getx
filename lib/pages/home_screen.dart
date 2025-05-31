import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_with_getx/controllers/task_controller.dart';
import 'package:todo_app_with_getx/main.dart';

import '../constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyApp.changeColor(Color(0xFFF5F5F5), Brightness.dark);
    return Scaffold(
      floatingActionButton: const MyFloatingActionBotton(),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: const [TopSectionWidget(), BottomSectionWidget()],
        ),
      ),
    );
  }
}

class MyFloatingActionBotton extends StatelessWidget {
  const MyFloatingActionBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'hero',
      onPressed: () {
        Get.toNamed('/addscreen')!.then((value) {
          MyApp.changeColor(kLightBlueColor, Brightness.dark);
        });
      },
      backgroundColor: kLightBlueColor,
      elevation: 0,
      child: const Icon(Icons.add),
    );
  }
}

class BottomSectionWidget extends StatelessWidget {
  const BottomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .6,
      decoration: (BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      )),
      child: Container(
        margin: const EdgeInsets.only(top: 20, right: 10, left: 50),
        child: Obx(() {
          return ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(Get.find<TaskController>().tasks[index].taskTitle),
                subtitle: Text(
                  Get.find<TaskController>().tasks[index].taskTitle,
                ),
                onTap: () {},
                trailing: Checkbox(
                  activeColor: kLightBlueColor,
                  value: Get.find<TaskController>().tasks[index].status,
                  side: BorderSide(color: Colors.black45, width: 1.5),
                  onChanged: (value) {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(color: Colors.black45, height: 1);
            },
            itemCount: Get.find<TaskController>().tasks.length,
          );
        }),
      ),
    );
  }
}

class TopSectionWidget extends StatelessWidget {
  const TopSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: kLightBlueColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, top: 20),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Center(
                child: Icon(Icons.bookmarks, color: kLightBlueColor),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, top: 20),
            child: const Text(
              'All',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, top: 5),
            child: Obx(() {
              return Text(
                '${Get.find<TaskController>().tasks.length} Tasks',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              );
            }),
          ),
        ],
      ),
    );
  }
}
