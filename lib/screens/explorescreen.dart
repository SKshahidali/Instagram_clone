import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  static List exploreimages = [
    "assets/images/explore_images/IMAGE (1).jpg",
    "assets/images/explore_images/IMAGE (2).jpg",
    "assets/images/explore_images/IMAGE (3).jpg",
    "assets/images/explore_images/IMAGE (4).jpg",
    "assets/images/explore_images/IMAGE (5).jpg",
    "assets/images/explore_images/IMAGE (6).jpg",
    "assets/images/explore_images/IMAGE (7).jpg",
    "assets/images/explore_images/IMAGE (8).jpg",
    "assets/images/explore_images/IMAGE (9).jpg",
    "assets/images/explore_images/IMAGE (10).jpg",
    "assets/images/explore_images/IMAGE (11).jpg",
    "assets/images/explore_images/IMAGE (12).jpg",
    "assets/images/explore_images/IMAGE (13).jpg",
    "assets/images/explore_images/IMAGE (14).jpg",
    "assets/images/explore_images/IMAGE (15).jpg",
    "assets/images/explore_images/IMAGE (16).jpg",
    "assets/images/Posts/100days.jpeg",
    "assets/images/Posts/urus.jpg",
    "assets/images/Posts/petra.jpg",
    "assets/images/Posts/nature.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFFF4),
      appBar: AppBar(
        actions:  [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height: kToolbarHeight,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (Icon(Iconsax.search_normal)),
                      SizedBox(width: 10,),
                      Text("Search for Anything")
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: MasonryGridView.builder(
        itemCount: exploreimages.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.pink,
            child: Image.asset(exploreimages[index]),
            ),
        ),)
    );
  }
}