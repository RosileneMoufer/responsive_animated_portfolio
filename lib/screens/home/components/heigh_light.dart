import 'package:flutter/material.dart';

import '../../../values/constants.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: defaultPadding * 0.5),
        Text(label!, style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}