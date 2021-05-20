import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:face_detection_flutter/screens/Home.dart';
import 'package:face_detection_flutter/Services/MyUser.dart';
import 'package:face_detection_flutter/Services/Auth.dart';
import 'package:face_detection_flutter/screens/Authentication/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser>(context);
    print(user);

    if (user== null){
      return Authenticate();
    }else {
      return Home();
    }


  }
}

    