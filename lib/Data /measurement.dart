


 import 'package:measurement_app/screens/foot_page.dart';
import 'package:measurement_app/screens/inch_page.dart';
import 'package:measurement_app/screens/meter_page.dart';
import '../screens/centimeter_page.dart';
import '../screens/goj_page.dart';
import '../screens/millimeter_page.dart';

List<String> measure = [
  "মিটার পরিমাপ",
  "সেন্টিমিটার পরিমাপ ",
  "মিলিমিটার পরিমাপ ",
  "ফুট পরিমাপ ",
  "ইঞ্চি পরিমাপ ",
  "গজ পরিমাপ "
];

List<dynamic> getPage = [
  MeterCalculate(getMeasure: measure[0]),
  CentiMeterPage(getCenti: measure[1],),
  MilliMeterPage(getMilli: measure[2],),
  FootScreen(getFoot: measure[3]),
  InchCalculate(getInch: measure[4]),
  GojCalculate(getGoj: measure[5],)
];