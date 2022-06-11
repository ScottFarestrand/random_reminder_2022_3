import 'package:flutter/material.dart';

import '../widgets/Login.dart';
import '../widgets/ValidateEmail.dart';
import '../widgets/register.dart';
enum pageWidgets {
  landing,
  login,
  register,
  validate,
}

class Landing extends StatefulWidget {
  static const id = "Landing";

  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  var pageWidget = pageWidgets.login;
  void setStateLoggedIn(){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('You have logged in!'),
        )
    );
    setState((){
      pageWidget = pageWidgets.validate;
    });
  }
  void setStateValidated(){
    setState((){
      // pageWidget = appState.validated;
    });
  }
  void setStateRegister(){
    setState((){
      pageWidget = pageWidgets.validate;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (pageWidget == pageWidgets.landing) {
      return Login(loginCallBack: setStateLoggedIn,
          registerCallBack: setStateRegister);
    }

    if (pageWidget == pageWidgets.validate) {
      return validateEmail(callback: setStateValidated,);
    }
    if (pageWidget == pageWidgets.register) {
      return Register(callback:setStateValidated );
    }
    // if (userState == appState.validated) {}
    return Login(loginCallBack: setStateLoggedIn,
        registerCallBack: setStateRegister);

  }


}
