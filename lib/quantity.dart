
import 'package:flutter/material.dart';

import 'constants.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({Key? key, }) : super(key: key);

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {

  int qty = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 130,
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30),),
              color: kDarkGrey,
            ),
            child: IconButton(
              onPressed: (){
                setState(() {
                  qty +=1;
                });
              },
              icon: const Icon(Icons.add, size: 14,),
              color: Colors.white,),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30),),
              color: Colors.white.withOpacity(0.3),
            ),
            child: Center(child: Text('$qty', style: const TextStyle(color: Colors.white, fontSize: 18),)),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30),),
              color: kDarkGrey,
            ),
            child: Center(
              child: IconButton(
                onPressed: (){
                  setState(() {
                    qty -= 1;
                    if(qty <=0 ) {
                      qty = 0;
                    }
                  });
                },
                icon: const Icon(Icons.remove, size: 14,),
                color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}

