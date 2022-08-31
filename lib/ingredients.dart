import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  const IngredientWidget({Key? key, required this.primaryText, required this.secondaryText}) : super(key: key);

  final Text primaryText;
  final Text secondaryText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      // padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        // color: Colors.green,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          primaryText,
          const SizedBox(height: 5,),
          secondaryText,
        ],
      ),
    );
  }
}

