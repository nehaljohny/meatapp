import 'package:flutter/material.dart';
import 'package:meatapp/Screens/intro_page.dart';
import 'package:meatapp/provider/cart_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartProvider>(create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: IntroPage(),
      ),
    );
  }
}

