import 'package:design_one/utils/routes/routeNames.dart';
import 'package:design_one/utils/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(DesignOne());

class DesignOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          canvasColor: Colors.black,
          primaryTextTheme:
              const TextTheme(titleLarge: TextStyle(color: Colors.white))),
      initialRoute: RouteNames.firstPage,
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
