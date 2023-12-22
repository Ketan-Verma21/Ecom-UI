import 'package:flutter/material.dart';

import '../models/shoe.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({Key? key,required this.shoe,required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left:25),
        width: 280,
        height: 375,
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //shoe pitcure
            Image.asset(shoe.imapePath,height: 250,),
            // decsription
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(shoe.description,style: TextStyle(color: Colors.grey[600]),),
            ),
            // price
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                      SizedBox(height: 8,),
                      Text('\$'+shoe.price,style: TextStyle(
                        color: Colors.grey
                      ),),
                    ],
                  ),
                  GestureDetector(
                    onTap:onTap,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)
                          )

                        ),
                        child: Icon(Icons.add,color: Colors.white,)),
                  )
                ],
              ),
            )
            // button to add to cart
          ],
        ),
      ),
    );
  }
}
