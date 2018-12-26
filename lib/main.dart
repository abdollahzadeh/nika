import 'package:flutter/material.dart';
import './page/Main.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget
{
   @override
   Widget build(BuildContext context) {
     return new MaterialApp(
       theme: ThemeData(fontFamily: 'Vazir'),
       home: new Activity()
     );
   }

}
