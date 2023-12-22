import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';
class CardItem extends StatefulWidget {
  Shoe shoe;
  CardItem({Key? key,required this.shoe}) : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemToCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imapePath),
        title:Text(widget.shoe.name),
        subtitle: Text(widget.shoe.description),
        trailing: IconButton(
          icon: Icon(Icons.delete_forever),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
