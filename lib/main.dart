import 'package:flutter/material.dart';
import 'package:provpro/front.dart';
import 'package:provider/provider.dart';
import 'view/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FrontPage(),
      ),
    );
  }
}
