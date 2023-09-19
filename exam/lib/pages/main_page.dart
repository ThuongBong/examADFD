import 'package:exam/core/constant/color.palatte.dart';
import 'package:exam/core/constant/dimension_constant.dart';
import 'package:exam/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const routeName = "/main_page";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: IndexedStack(
            index: _currentIndex,
            children: [
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.pink),
              Container(color: Colors.red),
            ],
          ),
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: ColorPalette.primaryColor,
            unselectedItemColor: ColorPalette.primaryColor.withOpacity(0.2),
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kMinPadding),
            items: [
              SalomonBottomBarItem(
                icon: const Icon(
                  FontAwesomeIcons.hotel,
                  size: kDefaultIconSize,
                ),
                title: const Text("Hotels")
              ),
              SalomonBottomBarItem(
                  icon: const Icon(
                    FontAwesomeIcons.plane,
                    size: kDefaultIconSize,
                  ),
                  title: const Text("Flights")
              ),
              SalomonBottomBarItem(
                  icon: const Icon(
                    FontAwesomeIcons.city,
                    size: kDefaultIconSize,
                  ),
                  title: const Text("All")
              ),
            ],
          ),
        ),

      ),
    );
  }
}
