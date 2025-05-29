import 'package:flutter/material.dart';

import '../constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kLightBlueColor,
        elevation: 0,
        child: const Icon(Icons.add),
      ),
    );
  }
}
