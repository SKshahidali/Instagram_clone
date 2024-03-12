import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram/models/posts_model.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({super.key,required this.post});
  final Posts post;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top of the post // 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Profile Image //
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey,
                    
                    backgroundImage:AssetImage(post.ProfileImage)
                    ),
                    const SizedBox(width: 10,),
                  //Profile Name //
                  Text(post.UserName,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Iconsax.more),color: Colors.black,)
            ],
          ),
        ),
          const SizedBox(height: 8,),

        //Post Contents //

        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(image: AssetImage(post.PostContent),fit: BoxFit.cover)
          ),
          ),
        const SizedBox(height: 4,),
        // Like ,cOMMENT AND SHARE BUTTON AND SAVE BUTTON //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Primary Buttoins //
            Row(
              children: [
                //Like Button 
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart)),
                //Comment Button //
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.message)),
                //Send Button //
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.send_2),color: Colors.black,),
              ],
            ),
            //Save Button //
            IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_outline),color: Colors.black,),
          ],
        ),
        const SizedBox(height: 8,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text:TextSpan(
            children: [
              TextSpan(
                text: post.UserName,
                style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16)
              ),

              const TextSpan(
                text: "  ",
                style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
              ),

              TextSpan(
                text: post.Captions,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14,
                  ),
              ),
              
            ]
          ),
          maxLines: 2,),),
              const SizedBox(height: 12,)
      ],

    );
  }
}