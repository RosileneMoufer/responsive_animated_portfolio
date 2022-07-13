import 'package:flutter/material.dart';

import '../values/color.dart';
import '../values/constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value), // definy the start value and final value
      duration: defaultDuration, // in this duration, the value will going to start to final
      builder: (context, value, child) => Text(
        "$value$text",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primaryColor),
      ),
    );
  }
}