import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram/screens/components/Profile_Components/profile_header.dart';
import 'package:instagram/screens/components/tabs/imageposts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFFBFFF4),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Iconsax.add_circle)),
            IconButton(onPressed: () {}, icon: const Icon(Iconsax.more))
          ],
          title: Text('UserName'),
        ),
        body:SafeArea(
          child: Column(
            children: [
              ProfileHeader(),
              SizedBox(height: 20,),
              TabBar(tabs: [
                Tab(icon: Icon(Iconsax.image),),
                Tab(icon: Icon(Iconsax.video_play),),
                Tab(icon: Icon(Iconsax.tag),)
              ]),
              Expanded(
                child: TabBarView(children: [
                  ImagePosts(),
                  Container(color: Colors.blue,),
                  Container(color: Colors.pink,),
                ]),
              )
              
            ],
          )
      
        ),
      ),
    );
  }
}