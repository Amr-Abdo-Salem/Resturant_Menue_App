import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provpro/component/cart_view.dart';
import 'package:provpro/view/checkout.dart';
import 'view/cart.dart';
import './model/item.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  List<Items> items = [
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 1",
      price: 100.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 2",
      price: 200.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 3",
      price: 300.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 4",
      price: 400.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 5",
      price: 500.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 6",
      price: 600.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 7",
      price: 700.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 8",
      price: 800.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 9",
      price: 900.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
    Items(
      imageItems: 'assets/images/meal_1.png',
      name: "Meal 10",
      price: 1000.0,
      detalsMeal: 'Checken and Mashrome Nodels',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 198, 184),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 119, 82, 71),
          title: const Text(
            " Shopping Cart ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                right: 30,
              ),
              child: Consumer<Cart>(
                builder: (context, card, child) {
                  return Text(
                    "${card.count}",
                    style: const TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: ((context, index) {
            return CartViewScreen(
              item: items[index],
            );
          }),
        ),
        // floatingActionButton: FloatingActionButton(
        //   focusColor: Colors.white,
        //   autofocus: true,
        //   elevation: 20,
        //   highlightElevation: 10,
        //   onPressed: () {
        //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        //       return CheckOut();
        //     }));
        //   },
        //   backgroundColor: Color.fromARGB(255, 119, 82, 71),
        //   tooltip: 'Next',
        //   child: Icon(
        //     Icons.shopping_cart,
        //     color: Colors.white,
        //   ),
        // ),
        bottomNavigationBar: BottomAppBar(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CheckOut(),
                ),
              );
            },
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 119, 82, 71),
              child: const Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.shopping_cart,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        // BottomNavigationBarItem(
        //   backgroundColor: Color.fromARGB(255, 119, 82, 71),
        //   label: 'Shopping Car',
        //   icon: IconButton(
        //     icon: Icon(
        //       Icons.shopping_cart,
        //       color: Colors.white,
        //       size: 35,
        //     ),
        //     onPressed: () {
        //       Navigator.of(context).push(
        //         MaterialPageRoute(
        //           builder: (context) => CheckOut(),
        //         ),
        //       );
        //     },
        //   ),
        // ),

        );
  }
}

    // return Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 80.0,
          //     child: Card(
          //       color: Colors.grey[400],
          //       child: Consumer<Cart>(
          //         builder: (context, c2, child) {
          //           return ListTile(
          //             leading: Image(
          //               image: AssetImage('${items[index].imageItems}'),
          //               width: 100,
          //               height: 90,
          //             ),
          //             title: Text("${items[index].name}"),
          //             subtitle: Text('${items[index].detalsMeal}'),
          //             trailing: IconButton(
          //               icon: Icon(Icons.add),
          //               onPressed: () {
          //                 c2.add(items[index]);
          //               },
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // );