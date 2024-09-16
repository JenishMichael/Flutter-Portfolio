import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/custom_color.dart';
import 'package:flutter_portfolio/constants/padding_left_right.dart';
import 'package:flutter_portfolio/screens/home/home.dart';
import 'package:flutter_portfolio/widgets/desktop_widget/desktop_about_me.dart';
import 'package:flutter_portfolio/widgets/desktop_widget/desktop_intro.dart';
import 'package:flutter_portfolio/widgets/header.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_about_me.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_contact.dart';
import 'package:flutter_portfolio/widgets/mobile_widgets/mobile_skills.dart';
import 'package:flutter_portfolio/widgets/separator.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DesktopScreen({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    double screenWidthMob = MediaQuery.of(context).size.width;
    print("Screen width inside desktop_screen: $screenWidthMob");
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return Column(
      children: [
        Header(scaffoldKey: scaffoldKey),
        const Expanded(
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
