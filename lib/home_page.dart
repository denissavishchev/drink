

import 'package:drink_new/quantity.dart';
import 'package:flutter/material.dart';

import 'back_button.dart';
import 'constants.dart';
import 'ingredients.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              child: Container(
                width: double.maxFinite,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover
                  ),
                ),

              ),
            ),
            Positioned(
              top: 60,
              left: 20,
              child: Row(
                children: [
                  CustomBackButton(
                    color: kDarkGrey,
                  child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
                    onPress: () {  }, )
                ],
              ),
            ),
            Positioned(
              top: 500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 340,
                  color: kBlack,
            ),),
            Positioned(
              top: 370,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 340,
                  decoration:  const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.elliptical(400, 120),
                    ),
                    color: kGrey,
                  ),
                )),
            const Positioned(
                top: 315,
                left: 290,
                child: QuantityWidget(),
            ),
            Positioned(
              top: 420,
              left: 20,
                child: SizedBox(
                  width: 340,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Whiskey Blues', style: TextStyle(color: Colors.white, fontSize: 24),),
                      const SizedBox(height: 5,),
                      Text('Alcoholic Drink', style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 14),),
                      const SizedBox(height: 15,),
                      Row(
                        children: <Widget>[
                          IngredientWidget(primaryText: const Text('60%', style: TextStyle(color: Colors.white, fontSize: 16)),
                            secondaryText: Text('Alcohol', style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 14)),),
                          const SizedBox(width: 20,),
                          IngredientWidget(primaryText: const Text('15%', style: TextStyle(color: Colors.white, fontSize: 16)),
                            secondaryText: Text('Juice', style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 14)),),
                          const SizedBox(width: 20,),
                          IngredientWidget(primaryText: const Text('25%', style: TextStyle(color: Colors.white, fontSize: 16)),
                            secondaryText: Text('Ice', style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 14)),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 160,
                            height: 50,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              color: kDarkGrey,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('\$8 ', style: TextStyle(color: kLightGrey, fontSize: 20),),
                                Text('Price x Drink', style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 16),),
                              ],
                            ),
                          ),
                          Container(
                            width: 160,
                            height: 50,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              color: kDarkGrey,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('\$16 ', style: TextStyle(color: Colors.white, fontSize: 20),),
                                Text('Price x Drink', style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 16),),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ),
            Positioned(
              top: 650,
                left: 290,
                child: Container(
                  width: 70,
                  height: 130,
                  decoration: BoxDecoration(
                    color: kLightGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          image: DecorationImage(image: AssetImage('assets/images/card.png'),),
                        ),

                      ),
                      const SizedBox(height: 5,),
                      const Text('MasterCard', style: TextStyle(color: Colors.white, fontSize: 12),),
                      const SizedBox(height: 12,),
                      const Text('Pay', style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],
                  ),
                ),
            ),
            Positioned(
              top: 680,
                left: 30,
                child: SizedBox(
                width: 90,
                child: Column(
                  children: <Widget>[
                    const Text('Total Order', style: TextStyle(color: Colors.white, fontSize: 18),),
                    SizedBox(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      child: Stack(
                        children:  <Widget>[
                          Positioned(
                            top: 10,
                              left: 10,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/totaldrink.png'),
                                  )
                                ),
                              ),
                          ),
                          Positioned(
                            top: 15,
                            left: 55,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30),),
                                color: kGrey,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 19,
                            left: 63,
                            child: Text('4', style: TextStyle(color: Colors.white, fontSize: 20),),
                          ),
                          Positioned(
                            top: 70,
                              left: 5,
                              child: Text('Total Drinks', style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 14),)),
                        ],
                      ),
                    )
                  ],
                ),
            )),
            Positioned(
              top: 743,
              left: 150,
              child: Column(
                children: <Widget>[
                  const Text('\$32', style: TextStyle(color: Colors.white, fontSize: 24),),
                  Text('Total Price', style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 14),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
