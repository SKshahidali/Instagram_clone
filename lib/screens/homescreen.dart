import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram/models/posts_model.dart';
import 'package:instagram/models/user_model.dart';
import 'package:instagram/screens/components/story_bubble.dart';
import 'package:instagram/screens/components/user_posts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFFF4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title:const Text("Instagram"),
        actions: [
          IconButton(onPressed: () => print("Notifications"), icon: const Icon(Iconsax.heart)),
          IconButton(onPressed: () => print("Add a post"), icon: const Icon(Iconsax.add_circle)),
          IconButton(onPressed: () => print("Chat"), icon: const Icon(Iconsax.send_2)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // User Stories //
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Users.users.length,
                itemBuilder: (context, index) {
                  return UserStories(user: Users.users[index]);
                },
              ),
            ),
            const SizedBox(height: 32,),
        
            // User Posts //
            ListView.builder(
              shrinkWrap: true,
              physics:const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: Posts.posts.length,
              itemBuilder: (context,index) {
                return UserPosts(post: Posts.posts[index]);
              }) 
          ],
        ),
      ),
    );
  }
}
