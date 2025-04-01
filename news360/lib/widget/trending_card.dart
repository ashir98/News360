import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news360/config/colors.dart';
import 'package:news360/config/text_scale.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.tag,
    required this.time
  });

  final String imageUrl,tag,time,title,author;


  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height*0.45,
      width: size.width*0.7,
      child: Card(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(2.5),
                  width: double.infinity,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 0,
                    color: Colors.white,
                    child: Image.network(
                      
                      width: double.infinity,
                      height: double.infinity,
                      imageUrl,
                      fit: BoxFit.cover,
                      
                    ),
                  ),
                ),
              ),
    
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  bottom: 5
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tag,   style: Theme.of(context).textTheme.bodyMedium,),
                        Text(time, style: Theme.of(context).textTheme.labelSmall,)
                      ],
                    ),
                    2.verticalSpace,
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                        fontWeight: FontWeight.w600
                      ),
                      maxLines: 2,
                      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    ),
    
                    2.verticalSpace,
                    
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 14.sp,
                          backgroundColor: Theme.of(context).colorScheme.primary,
                        ),
                        5.horizontalSpace,
                        Text(author)
                      ],
                    ),
                  ],
                ),
              )
             
            ],
          ),
        ),
    );
  }
}