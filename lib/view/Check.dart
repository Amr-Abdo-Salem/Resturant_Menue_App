// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provpro/view/done.dart';
import 'cart.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 198, 184),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 119, 82, 71),
        title: const Text(
          'Check',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Consumer<Cart>(
              builder: (conext, c2, child) {
                return Column(children: [
                  Text(
                    '${c2.totalprice}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]);
              },
            ),
          ),
        ],
      ),
      // bottomNavigationBar:
      //     BottomNavigationBar(backgroundColor: Colors.teal[300], items: [
      //   BottomNavigationBarItem(
      //     backgroundColor: Colors.tealAccent,
      //     label: 'OK',
      //     icon: Icon(
      //       Icons.check,
      //       color: Colors.black,
      //       size: 35,
      //     ),
      //   ),
      //   BottomNavigationBarItem(
      //       backgroundColor: Colors.tealAccent,
      //       label: 'Ok',
      //       icon: Icon(
      //         Icons.check,
      //         color: Colors.black,
      //         size: 35,
      //       ))
      // ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 119, 82, 71),
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) => DoneScreen()),
          // );
          // exit(0);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.done_all_outlined),
      ),
    );
  }
}
