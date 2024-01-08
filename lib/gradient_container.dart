import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});
  const GradientContainer.purple({super.key})
      : startColor = Colors.purple,
        endColor = Colors.indigo;

  final Color startColor, endColor;

  void rollDice() {
    // ...
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/dice-1.png",
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 25,
                  right: 25,
                ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.amber,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text("Roll"),
            )
          ],
        ),
      ),
    );
  }
}
