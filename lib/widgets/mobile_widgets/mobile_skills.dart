import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/padding_left_right.dart';
import 'package:flutter_portfolio/screens/home/home.dart';
import 'package:flutter_portfolio/widgets/separator.dart';
import 'package:flutter_portfolio/widgets/skill_container_builder.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return Container(
      key: skillskey,
      padding: EdgeInsets.fromLTRB(paddingValue, 25, paddingValue, 25),
      child: const Column(
        children: [
          Separator(
            separatorName: "Skills",
            gradient1: Colors.white,
            gradient2: Color(0xFFFF5722), // Dark Orange
          ),
          SizedBox(
            height: 25,
          ),
          SkillContainerBuilder(initial: 0, length: 3),
          SkillContainerBuilder(initial: 3, length: 6),
        ],
      ),
    );
  }
}
