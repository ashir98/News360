
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: double.infinity,
      height: size.height*0.2,
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.background,
        child: Row(
          children: [
    
            Container(
              height: double.infinity,
              width: size.width*0.3,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 14.sp,
                          backgroundColor: Theme.of(context).colorScheme.primary,
                        ),
                        5.horizontalSpace,
                        Text("Syed Ashir Ali")
                      ],
                    ),
                
                    Text("Save water save life Save water save life Save water save life", maxLines: 2, overflow: TextOverflow.ellipsis,),
                    Text("2 days ago", style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
              ),
            )
    
    
          ],
        ),
      ),
    );
  }
}

