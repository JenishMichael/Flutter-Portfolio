import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/skills_list.dart';

class SkillContainerBuilder extends StatelessWidget {
  final int initial;
  final int length;
  final double imageWidth;
  final double imageHeight;

  const SkillContainerBuilder(
      {super.key,
      required this.initial,
      required this.length,
      this.imageWidth = 100,
      this.imageHeight = 100});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (int i = initial; i < length; i++)
          Container(
            // color: Colors.grey,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(10),
            //100
            width: imageWidth,
            height: imageHeight,
            child: Column(
              children: [
                Image(
                  // width: imageWidth - imageWidth * 0.20,
                  // height: imageHeight - imageHeight * 0.20,
                  image: AssetImage(
                    "assets/image/${skillImg[i]}",
                  ),
                ),
                Text(
                  skillName[i],
                )
              ],
            ),
          ),
      ],
    );
  }
}
//


//


//


//
