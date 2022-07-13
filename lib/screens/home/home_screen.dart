import 'package:flutter/material.dart';
import '../main/main_screen.dart';

import 'components/highlighted/highlighted.dart';
import 'components/banner/home_banner.dart';
import 'components/projects/my_projects.dart';
import 'components/recommendation/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
