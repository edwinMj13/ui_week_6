import 'package:flutter/material.dart';
import 'package:ui_week_6/UI%20Two/bottom_navigation_screens/sc_accounts.dart';
import 'package:ui_week_6/UI%20Two/bottom_navigation_screens/sc_home.dart';
import 'package:ui_week_6/UI%20Two/bottom_navigation_screens/manage/sc_manage.dart';
import 'package:ui_week_6/UI%20Two/bottom_navigation_screens/sc_orders.dart';
import 'package:ui_week_6/UI%20Two/bottom_navigation_screens/sc_products.dart';

class Design_Two extends StatefulWidget {
  const Design_Two({super.key});

  @override
  State<Design_Two> createState() => _Design_TwoState();
}

class _Design_TwoState extends State<Design_Two> {

  final screens=[
    Home_Two(),
    Orders_Two(),
    Products_Two(),
    Manage_Two(),
    Accounts_Two()
  ];
   int selectedVal=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("Manage Store"),
      ),
      body: screens[selectedVal],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurple,
        currentIndex: selectedVal,
        type: BottomNavigationBarType.fixed,
        onTap: (newIndex){
          setState(() {
            selectedVal=newIndex;
          });
        },
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Manage"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
        ]
      ),
    );
  }
}
/*

 */