import 'package:flutter/material.dart';
import 'package:untitled2/core/design/res/colors.dart';
import 'package:untitled2/screens/about_app/view.dart';
import 'package:untitled2/screens/add_address/view.dart';
import 'package:untitled2/screens/create_new_password/view.dart';
import 'package:untitled2/screens/forget_password/view.dart';
import 'package:untitled2/screens/history_transctions/view.dart';
import 'package:untitled2/screens/home/pages/home/view.dart';
import 'package:untitled2/screens/home/pages/notifications/view.dart';
import 'package:untitled2/screens/home/pages/orders/view.dart';
import 'package:untitled2/screens/login/view.dart';
import 'package:untitled2/screens/register/view.dart';
import 'package:untitled2/screens/splash/view.dart';
import 'package:untitled2/screens/verify_code/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    builder: (context,child)=> Directionality(textDirection: TextDirection.rtl, child: child!),
    theme: ThemeData(
      primarySwatch: getMaterialColor(primaryColor.value),
      unselectedWidgetColor: Color(0xffF3F3F3),
    ),
    home: PageView(
      children: [
        VerifyCodeScreen(),
        SplashScreen(),
        RegisterScreen(),
        CreateNewPasswordScreen(),
         LoginScreen(),
        ForgetPasswordScreen(),
        // AddAddressScreen(),
        // AboutAppScreen(),
        // OrdersPage(),
        // NotificationsPage(),
        // HistoryTransctionsScreen(),

      ],
    ),
  );
  }

}
