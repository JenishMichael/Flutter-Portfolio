import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/header.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_about_me.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_contact.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_intro.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_skills.dart';

class MobileScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const MobileScreen({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(scaffoldKey: scaffoldKey),
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntroMessage(),
                MobileAboutMe(),
                MobileSkills(),
                MobileContact(),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}
