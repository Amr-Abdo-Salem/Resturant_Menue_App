import 'package:flutter/material.dart';
import 'package:provpro/model/returant_model.dart';

import 'component/resturant_view.dart';

class FrontPage extends StatelessWidget {
  FrontPage({super.key});

  final List<ResturantModels> resturant = [
    ResturantModels(
      resturantName: "Restu1",
      imageName: "assets/images/restu_1.jpg",
    ),
    ResturantModels(
      resturantName: "Restu1",
      imageName: "assets/images/restu_1.jpg",
    ),
    ResturantModels(
      resturantName: "Restu1",
      imageName: "assets/images/restu_1.jpg",
    ),
    ResturantModels(
      resturantName: "Restu1",
      imageName: "assets/images/restu_1.jpg",
    ),
    ResturantModels(
      resturantName: "Restu1",
      imageName: "assets/images/restu_1.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 198, 184),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 119, 82, 71),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 16,
            ),
            child: Icon(
              Icons.restaurant,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: resturant.length,
        itemBuilder: (context, index) {
          return ResturantesViewScreen(
            restu: resturant[index],
          );
        },
      ),
    );
  }
}
