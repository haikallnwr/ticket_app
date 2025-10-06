import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/home/all_ticket.dart';

void main() {
  runApp(const MyApp());
}

class TestClass{
  late int x;
  late int y;

  TestClass({required this.x, required this.y});

  TestClass copyWith({int? x, int? y}){
    return TestClass(x: x??this.x, y: y??this.y);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        AppRoutes.homePage:(context)=> const BottomNavBar(),
        AppRoutes.allTickets:(context)=> const AllTicket()
      },
    );
  }
}

