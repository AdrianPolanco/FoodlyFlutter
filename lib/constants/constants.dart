import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
String googleApiKey = '';

const kPrimary = Color(0xFF30b9b2);
const kPrimaryLight = Color(0xFF40F3EA);
const kSecondary = Color(0xffffa44f);
const kSecondaryLight = Color(0xFFffe5db);
const kTertiary = Color(0xff0078a6);
const kGray = Color(0xff83829A);
const kGrayLight = Color(0xffC1C0C8);
const kLightWhite = Color(0xffFAFAFC);
const kWhite = Color(0xfffFFFFF);
const kDark = Color(0xff000000);
const kRed = Color(0xffe81e4d);
const kOffWhite = Color(0xffF3F4F8);

//.h y .w son de flutter_screenutils y lo que hace es
// establecer 825 y 375 como valores por defecto del height y width
// pero gracias a flutter_screenutils estas medidas variaran
//y seran calculadas para adaptarse a la pantalla del dispositivo
double height = 825.h;
double width = 375.w;


const String appBaseUrl = "http://localhost:6003";

