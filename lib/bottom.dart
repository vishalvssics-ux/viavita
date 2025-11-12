import 'package:flutter/material.dart';
import 'package:viavita_new_customer/color/colors.dart';
import 'package:viavita_new_customer/images/images.dart';
import 'package:viavita_new_customer/screens/HomeScreen/home_screen.dart';
import 'package:viavita_new_customer/screens/OfferScreen/offer_screen.dart';
import 'package:viavita_new_customer/screens/ProfileScreen/profilescreen.dart';
import 'package:viavita_new_customer/screens/TaskScreen/taskscreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedIndex = 0;

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    HomeScreen(),
    TasksScreen(),
    OffersScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background_color,
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: colors.form_field_color,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomFields(
                image: Appicons.home_icon,
                index: 0,
                name: 'Home',
                onTap: () => onTapped(0),
              ),
              bottomFields(
                image: Appicons.task_icon,
                index: 1,
                name: 'Tasks',
                onTap: () => onTapped(1),
              ),
              bottomFields(
                image: Appicons.offer_icon,
                index: 2,
                name: 'Offers',
                onTap: () => onTapped(2),
              ),
              bottomFields(
                image: Appicons.profile_bottom_icon,
                index: 3,
                name: 'Profile',
                onTap: () => onTapped(3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomFields({
    required String image,
    required String name,
    required int index,
    required Function() onTap,
  }) {
    final bool isSelected = selectedIndex == index;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            scale: 5,
            color: isSelected ? colors.app_color_1 : Colors.grey,
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? colors.app_color_1 : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
