import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news360/controller/nav_controller.dart';
import 'package:news360/view/articles.dart';
import 'package:news360/view/home.dart';
import 'package:news360/view/settings.dart';
import 'package:news360/widget/bottom_bar/bottom_bar.dart';
import 'package:news360/widget/bottom_bar/bottom_bar_item.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({super.key});

  List<Widget> pages = [HomePage(), ArticlePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    final NavController navController = Get.put(NavController());

    return Obx(
      () => Scaffold(
      extendBody: true,

      body: IndexedStack(
        
        index: navController.getIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomBar(
        currentIndex: navController.getIndex,
        onTap: navController.changeIndex,
        items: [
          BottomBarItem(icon: Icons.home),
          BottomBarItem(icon: Icons.book),
          BottomBarItem(icon: Icons.settings)
        ],
      ),
    ),
    );
  }
}
