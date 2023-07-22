import 'package:design_one/utils/routes/routeNames.dart';
import 'package:design_one/view/screens/screenFour.dart';
import 'package:design_one/view/screens/screenThree.dart';
import 'package:flutter/material.dart';

import '../../view/screens/errorScreen.dart';
import '../../view/screens/screenOne.dart';
import '../../view/screens/screenTwo.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.firstPage:
        return MaterialPageRoute(
            builder: (BuildContext context) => ScreenOne());

      case RouteNames.secondPage:
        return MaterialPageRoute(
            builder: (BuildContext context) => ScreenTwo());

      case RouteNames.thirdPage:
        return MaterialPageRoute(
            builder: (BuildContext context) => ScreenThree());

      case RouteNames.fourthPage:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                ScreenFour(settings.arguments as dynamic));

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => ErrorScreen());
    }
  }
}
