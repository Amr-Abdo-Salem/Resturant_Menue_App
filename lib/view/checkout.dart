import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Check.dart';
import 'cart.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});
  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 198, 184),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 119, 82, 71),
        title: const Text(
          "Check Out",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Consumer<Cart>(
        builder: (context, c1, child) {
          return ListView.builder(
              itemCount: c1.basketitems.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey[400],
                  child: ListTile(
                    title: Text("${c1.basketitems[index].name}"),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        c1.remove(c1.basketitems[index]);
                      },
                    ),
                  ),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const CheckPage();
            }),
          );
        },
        backgroundColor: const Color.fromARGB(255, 119, 82, 71),
        child: const Icon(
          Icons.check,
          color: Colors.white,
          size: 40.0,
        ),
      ),
    );
  }
}
