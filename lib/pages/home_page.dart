import 'package:flutter/material.dart';

import 'intro_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("lib/images/nike.png",height: 240,),
              ),
              const SizedBox(height: 48,),
              const Text(
                "Just Do It",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              const SizedBox(height: 48,),
              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              //title
              //sub title
              //start now button
              const SizedBox(height: 48,),
              GestureDetector(
                onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>IntroPage())) ,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                        "Shop Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
