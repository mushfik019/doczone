import 'package:doczone/subscreens/homepage.dart';
import 'package:doczone/subscreens/mynotification.dart';
import 'package:doczone/subscreens/myprofile.dart';
import 'package:doczone/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [
    const MyNotification(),
    const HomePage(),
    const MyProfile(),
  ];
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: buttonClr,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: GNav(
            onTabChange: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: buttonClr,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color(0x50DF2E2E),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.notifications,
                text: 'Notification',
              ),
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
