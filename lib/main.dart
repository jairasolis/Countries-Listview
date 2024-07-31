import 'package:flutter/material.dart';
import 'package:countries_listview/countriesScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Country ListView',
    theme: ThemeData(fontFamily: 'SulphurPoint'),
    debugShowCheckedModeBanner: false,
    home: const Countries(),
  ));
}
