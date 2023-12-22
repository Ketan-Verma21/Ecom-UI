import 'package:ecom/components/bottom_nav_bar.dart';
import 'package:ecom/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int _selectedIndex=0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  final List<Widget> _pages=[
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(left:12),
                child: Icon(Icons.menu,color: Colors.black,),
              ),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Image.asset("lib/images/nike.png",color: Colors.white,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(color: Colors.grey[800],),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left:25.0),
                  child: ListTile(
                    leading:Icon(Icons.home,color: Colors.white,) ,
                    title: Text("Home",style: TextStyle(color: Colors.white),),

                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left:25.0),
                  child: ListTile(
                    leading:Icon(Icons.info,color: Colors.white,) ,
                    title: Text("About",style: TextStyle(color: Colors.white),),

                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(left:25.0,bottom: 25),
              child: ListTile(
                leading:Icon(Icons.logout,color: Colors.white,) ,
                title: Text("Logout",style: TextStyle(color: Colors.white),),

              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index)=>navigateBottomBar(index),
        ),
      body: _pages[_selectedIndex],
    );
  }
}
