import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:todo_app_with_getx/constant.dart';
import 'package:todo_app_with_getx/main.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyApp.changeColor(const Color(0xFFF5F5F5), Brightness.light);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MyCustomAppBar(),
            TitleWidget(),
            TaskTextFeild(),
            NoteWidget(),
            MyButton(),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: Get.width,
      height: 50,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: kLightBlueColor,
          elevation: 0,
        ),

        onPressed: () {},
        child: Text('Add'),
      ),
    );
  }
}

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextField(
        maxLength: 30,
        cursorColor: kLightBlueColor,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.bookmark_border, color: Colors.grey),
          border: InputBorder.none,
          counter: Container(),
          hintText: 'Add Note',
        ),
      ),
    );
  }
}

class TaskTextFeild extends StatelessWidget {
  const TaskTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        maxLines: 6,
        cursorColor: kLightBlueColor,
        cursorHeight: 40,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: Text(
        'What are you planing?',
        style: TextStyle(color: Colors.grey[700], fontSize: 19),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 50),
            child: const Text(
              'New Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Hero(
          tag: 'hero',
          transitionOnUserGestures: true,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ),
      ],
    );
  }
}
