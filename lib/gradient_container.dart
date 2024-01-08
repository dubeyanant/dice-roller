import 'package:flutter/material.dart';
import 'package:dice/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});
  const GradientContainer.purple({super.key})
      : startColor = Colors.purple,
        endColor = Colors.indigo;

  final Color startColor, endColor;

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
      child: const Center(
        child: StyledText('Hello World'),
      ),
    );
  }
}
