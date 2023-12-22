import 'package:ecom/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom FREAK",
        price: "236",
        imapePath: "lib/images/zoom-freak.png",
        description: "The forward Thinking design of his latest signature shoe"),
    Shoe(
        name: "Air Jordans",
        price: "226",
        imapePath: "lib/images/air-jordan.png",
        description: "Step into the Future, Fly with Jordans."),
    Shoe(
        name: "KD Treys",
        price: "240",
        imapePath: "lib/images/KDTrey.png",
        description: "Step into Greatness: KDTrey, where every stride is a slam dunk of style and performance!"),
    Shoe(
        name: "Kyrie 6",
        price: "190",
        imapePath: "lib/images/Kyrie.png",
        description: "Kyrie's kicks: Where agility meets style, and every step is a statement."),
  ];
  List<Shoe> userCart=[];
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemToCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
