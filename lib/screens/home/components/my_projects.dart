import 'package:flutter/material.dart';
import 'package:responsive_animated_portfolio/values/color.dart';

import '../../../models/project.dart';
import '../../../responsive//responsive.dart';
import '../../../values/constants.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        ),
        const SizedBox(height: defaultPadding),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: primaryColor, //change background color of button
              onPrimary: darkColor, //change text color of button
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context)
                    ? defaultPadding
                    : defaultPadding * 2,
                vertical:
                Responsive.isMobile(context) ? 16 : defaultPadding,
              ),
              child: const Text("See more projects"),
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
