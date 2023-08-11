import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:provpro/model/returant_model.dart';
import '../home.dart';

class ResturantesViewScreen extends StatelessWidget {
  const ResturantesViewScreen({
    super.key,
    required this.restu,
  });
  final ResturantModels restu;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
        left: 16.0,
        top: 16.0,
        bottom: 8,
      ),
      child: GestureDetector(
        onTap: () {
          // Get.to(HomePage());
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Container(
          height: 325,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            border: Border.all(
              color: Colors.black,
              width: 2.5,
            ),
          ),
          child: Column(children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              height: 250,
              width: double.infinity,
              //color: Colors.blueGrey,
              child: Image(
                image: AssetImage(restu.imageName!),
                fit: BoxFit.cover,
                width: 200,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              height: 70,
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      restu.resturantName!,
                      style: const TextStyle(color: Colors.black),
                    ),
                    // trailing: IconButton(
                    //   icon: Icon(
                    //     Icons.arrow_forward,
                    //     color: Colors.black,
                    //   ),
                    //   onPressed: () {
                    //     Get.to(HomePage());
                    //   },
                    // ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
