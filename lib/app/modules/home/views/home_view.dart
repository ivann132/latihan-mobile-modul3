import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: Column(
            children: [
              Text(
                "User ID: ${controller.well[0].userId}",
              ),
              Text(
                "ID: ${controller.well[0].id}",
              ),
              Text(
                "Title: ${controller.well[0].title}",
              ),
              Text(
                "Completed: ${controller.well[0].completed}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
