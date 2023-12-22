import 'package:ecom/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
    showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title:Text("Successfully added"),
          content: Text("Check your cart"),
        ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:(context,value,child)=> Column(
        children: [
          //search bar
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20)
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search",style: TextStyle(color: Colors.grey),),
                Icon(Icons.search,color: Colors.grey,),

              ],
            ),
          ),
          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text("everyone flies... some flies longer than other",
            style: TextStyle(color: Colors.grey[600]),),
          ),
          //hot picks
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.0),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Hot Picks 🔥',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),),
                Text("See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),),

              ],
            ),
          ),
          const SizedBox(height:10 ,),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index){
            Shoe shoe=value.getShoeList()[index];
            return ShoeTile(shoe: shoe, onTap: ()=>addShoeToCart(shoe),

            );
          })),
          Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 25,right: 25),
            child: Divider(color: Colors.white,),
          )
        ],
      ),
    );
  }
}
