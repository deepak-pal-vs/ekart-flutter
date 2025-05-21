import 'package:first_flutter/constants/route.constants.dart';
import 'package:first_flutter/screens/help.dart';
import 'package:first_flutter/screens/home.dart';
import 'package:first_flutter/screens/login.dart';
import 'package:first_flutter/screens/settings.dart';
import 'package:first_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        MyRoutes.home: (context) => Home(),
        MyRoutes.login: (context) => Login(),
        MyRoutes.settings: (context) => Settings(),
        MyRoutes.help: (context) => Help(),
      },
      initialRoute: MyRoutes.home,
    );
  }
}
