import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news360/config/colors.dart';

import 'package:news360/widget/news_card.dart';
import 'package:news360/widget/trending_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: RichText(
          text:  TextSpan(
            text: "News",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              color: Theme.of(context).textTheme.bodyMedium!.color
            ),
            children: const [
              TextSpan(                
                text:  "360",
                style: TextStyle(
                  color: lightPrimaryColor
                )
              )
            ]
          ),
        ),
      ),
    
      
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending News",   style: Theme.of(context).textTheme.bodyLarge,),
                  Text("See All", style: Theme.of(context).textTheme.labelSmall,)
                ],
              ),
          
          
          
              SizedBox(
                height: size.height*0.4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const TrendingCard(
                      author: "Syed Ashir Al",
                      imageUrl: "https://c.cricketpakistan.com.pk/images/posts/cover_1742195483FotoJet-(2).jpg",
                      time: "2 days ago",
                      tag: "Trendig News",
                      title: "Save water save life water save life water save life",
                    );
                  },
                )
              ),

              15.verticalSpace,


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("News for you",   style: Theme.of(context).textTheme.bodyLarge,),
                  Text("See All", style: Theme.of(context).textTheme.labelSmall,)
                ],
              ),



              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {

                  return const NewsCard();
                  
                },
              )
            ],
          ),
        ),
      ),




    );
  }
}
