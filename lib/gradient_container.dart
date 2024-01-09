import 'package:flutter/material.dart';
import 'package:introduce_group/introduce.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  GradientContainer.purple({super.key})
      : colors = [Colors.deepPurple, Colors.indigo];

  // this is a final but default in Dart list can be updated
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: Introduce(),
      ),
    );
  }
}