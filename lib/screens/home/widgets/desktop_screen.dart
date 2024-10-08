import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/desktop_view_header.dart';
import 'package:flutter_portfolio/widgets/desktop_widget/desktop_about_me.dart';
import 'package:flutter_portfolio/widgets/desktop_widget/desktop_intro.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_contact.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_skills.dart';

class DesktopScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DesktopScreen({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopViewHeader(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DesktopIntro(),
                DesktopAboutMe(),
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
