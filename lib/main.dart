import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './view/pages/homeView.dart';

void main()=>runApp(MaterialApp(home: HomeView(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.orange
  ),));