import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram/screens/homescreen.dart';
import 'package:instagram/screens/explorescreen.dart';
import 'package:instagram/screens/profilescreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   var _selectedindex = 0;
    void navigatebottombar(int index) {
      setState(() {
        _selectedindex = index;
      });
    }

    final List<Widget> _pages =  [
      HomeScreen(),
      ExploreScreen(),
      Container(color: Colors.orange,),
      ProfileScreen()
      
    ];

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
      type:BottomNavigationBarType.fixed,
      currentIndex:_selectedindex,
      onTap: navigatebottombar,
      selectedItemColor:Colors.black,
      unselectedItemColor:Colors.black.withOpacity(0.5),
      items: const [
        BottomNavigationBarItem(icon: Icon(Iconsax.home,),label: ""),
        BottomNavigationBarItem(icon: Icon(Iconsax.search_normal),label: ""),
        BottomNavigationBarItem(icon: Icon(Iconsax.video_play),label: ""),
        BottomNavigationBarItem(icon: Icon(Iconsax.user),label: "")
        
      ],
      
        ),
      body: _pages[_selectedindex],
    );
  }
}