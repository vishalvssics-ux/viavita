import 'package:flutter/material.dart';
import 'package:viavita_new_customer/color/newcolors.dart';
import 'package:viavita_new_customer/images/images.dart';


class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 60,
      child: TextFormField(
         decoration: InputDecoration(
    hintText: "Search here...",
    hintStyle:  TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.captionColor,
                      ),
    // contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    prefixIcon:Image.asset(
     Appicons.search_icon,
     scale: 5,
    ),
    suffixIcon: Image.asset(
   Appicons.filter_icon,
     scale: 5,
    ),

    filled: true,
    fillColor: AppColors.textfieldbg,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
    ),
  ),
      ),
    );
  }
}