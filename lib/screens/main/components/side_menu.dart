import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../values/constants.dart';
import '../../../responsive/responsive.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            if (Responsive.isTablet(context))
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close),
                    ),
                  ),
                ),
              ),
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                primary:
                    false, // to evit 'The provided ScrollController is currently attached to more than one ScrollPosition'
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Residence",
                      text: "Ceará",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Fortaleza",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "27",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding * 0.5),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding * 0.5),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
