import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(100),
            ),
            width: MediaQuery.of(context).size.width/1.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).colorScheme.primary,


                  ),
                  child: Icon(Icons.home_filled, color: Theme.of(context).colorScheme.onBackground,size: 28,),
                ),
                Icon(Icons.book, color: Theme.of(context).colorScheme.secondaryContainer,),
                Icon(Icons.settings, color: Theme.of(context).colorScheme.secondaryContainer,)
          
             
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}