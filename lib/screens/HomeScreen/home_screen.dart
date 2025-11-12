import 'package:flutter/material.dart';
import 'package:viavita_new_customer/color/colors.dart';
import 'package:viavita_new_customer/images/images.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background_color,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // 1. Header Section (Profile, Greeting, Notification)
              _buildHeader(),
              
              const SizedBox(height: 25.0),
              
              // 2. Search Bar Section
              _buildSearchBar(),
              
              // 3. The rest of the white space (empty content)
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Left Side: Profile Picture and Text
        Row(
          children: <Widget>[
            // Placeholder for Profile Image (replace with an actual Asset or NetworkImage)
            CircleAvatar(
              radius: 25,
              backgroundImage:AssetImage(Images.profile_image),
              backgroundColor: Colors.grey,
            ),
            
            const SizedBox(width: 10),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Hello,",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "Ashmi A B",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        
        // Right Side: Notification Icon with Badge
        Stack(
          children: <Widget>[
            Image.asset(Appicons.notification_icon,scale: 4),
           
          ],
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search here...',
        hintStyle: const TextStyle(color: Colors.grey,fontSize: 13),
        // Search Icon on the left
        prefixIcon: Image.asset(Appicons.search_icon,scale: 4),
        // Filter Icon on the right
        suffixIcon:Image.asset(Appicons.filter_icon,scale: 4),
        // Style for the container/field
        filled: true,
        fillColor:colors.form_field_color, // Light grey background
        //contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        // Border style (rounded, no line)
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none, // You can customize focused state if needed
        ),
      ),
    );
  }
}