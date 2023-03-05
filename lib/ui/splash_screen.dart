import 'dart:async';

import 'package:e_com/const/AppColours.dart';
import 'package:e_com/ui/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), ()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=> LoginScreen())));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.deep_orange,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("E-Commerce", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 44.sp),),
            CircularProgressIndicator(color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
