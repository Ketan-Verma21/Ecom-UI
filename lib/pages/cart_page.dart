import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/card_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context,value,child)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My Cart",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 24),),
              const SizedBox(height: 30,),
              Expanded(child: ListView.builder(
                itemCount: value.getUserCart().length,
                  itemBuilder: (context,index){
                    Shoe individualShoe=value.getUserCart()[index];
                    return CardItem(shoe: individualShoe,);
                  }))
            ],
          ),
        ));
  }
}
