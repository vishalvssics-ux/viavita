import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:viavita_new_customer/API/regsiter_provider.dart';
import 'package:viavita_new_customer/bottom.dart';
import 'package:viavita_new_customer/screens/LoginScreen/login_screen.dart';
import 'package:viavita_new_customer/screens/OfferScreen/offer_screen.dart';
import 'package:viavita_new_customer/screens/ProfileScreen/profilescreen.dart';
import 'package:viavita_new_customer/screens/SplashScreen/splash_screen.dart';



void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>UserRegistrationProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home:Splashscreen(),
        theme: ThemeData(
           fontFamily: GoogleFonts.poppins().fontFamily,
        ),
      ),
    );
  }
}