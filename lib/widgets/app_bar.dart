import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/responsive_builder.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      //Mobile
      mobile: AppBar(
        title: Container(
          padding: const EdgeInsets.all(8),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                Colors.orange.shade800,
                Colors.orange.shade600,
                Colors.amber.shade500,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  html.window.location.reload();
                },
                child: const Text(
                  'JM',
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          ),
        ],
      ),
      //Tablet
      tablet: AppBar(
        backgroundColor: Color(0xFF000000),
        leadingWidth: 300,
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "A Software Developer",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 22,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: [
          PopupMenuButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.home),
                          Text(
                            "   Home   ",
                          ),
                        ],
                      )),
                  PopupMenuItem(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.info),
                        Text("   About Me   "),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.work),
                        Text("   Services   "),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        Text("   Contact Me    "),
                      ],
                    ),
                  ),
                ];
              }),
        ],
      ),
      desktop: AppBar(
        leadingWidth: 300,
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "A Software Developer",
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(),
            child: const Text(
              "Home",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
              Color(0xFF000000),
            )),
            child: Text(
              "About Me",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
              Color(0xFF000000),
            )),
            child: Text(
              "Services",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(1),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  Color.fromARGB(255, 31, 164, 123),
                ),
                side: WidgetStateProperty.all(
                    BorderSide(color: Color.fromARGB(255, 203, 161, 53))),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
              ),
              child: const Text(
                "Contact Me",
                style: TextStyle(color: Color.fromARGB(255, 229, 229, 229)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
