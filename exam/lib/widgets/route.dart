import 'dart:js';

import 'package:exam/pages/main_page.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  MainPage.routeName : (context) => const MainPage(),
};