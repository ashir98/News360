import 'package:flutter/material.dart';
import 'package:news360/widget/bottom_bar/bottom_bar_item.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  Color? bgColor;
  Color? selectedItemColor;
  Color? unSelectedItemColor;
  final List<BottomBarItem> items;
  BottomBar({super.key, required this.currentIndex, required this.onTap, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 55,
            decoration: BoxDecoration(
               boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary,
              blurRadius: 9,
              spreadRadius:1,
            )
          ],
              color: bgColor ?? Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(100),
            ),
            width: MediaQuery.of(context).size.width/1.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(items.length, (index) {
                return InkWell(
      onTap: () {
        onTap(index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(5),
        curve: Curves.bounceInOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color:   currentIndex == index
          ? selectedItemColor ??   Theme.of(context).colorScheme.primary
          : null,
        ),
        child: Icon(
          items[index].icon,
          color: currentIndex == index
          ?Theme.of(context).colorScheme.onBackground
          : Colors.grey,
          size: 28,
        ),
      ),
          );
              },)
            ),
          ),
          
        ],
      ),

      
    );
  }
}