import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/item.dart';
import '../view/cart.dart';

class CartViewScreen extends StatelessWidget {
  const CartViewScreen({super.key, required this.item});
  final Items item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80.0,
        child: Card(
          color: Colors.grey[400],
          child: Consumer<Cart>(
            builder: (context, c2, child) {
              return ListTile(
                leading: Image(
                  image: AssetImage('${item.imageItems}'),
                  width: 100,
                  height: 90,
                ),
                title: Text("${item.name}"),
                subtitle: Text('${item.detalsMeal}'),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    c2.add(item);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
