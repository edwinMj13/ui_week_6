import 'package:flutter/material.dart';
import 'package:ui_week_6/UI%20Four/ui_D_four.dart';
import 'package:ui_week_6/UI%20One/ui_D_one.dart';
import 'package:ui_week_6/UI%20Seven/ui_D_seven.dart';
import 'package:ui_week_6/UI%20Six/ui_D_six.dart';
import 'package:ui_week_6/UI%20Three/ui_D_three.dart';
import 'package:ui_week_6/UI%20Two/ui_D_two.dart';

import 'UI Five/ui_D_five.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> homeData = [
    "Design 1",
    "Design 2",
    "Design 3",
    "Design 4",
    "Design 5",
    "Design 6",
    "Design 7"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Week 6 UI Designs"),
      ),
      body:
      ListView.builder(
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              height: 100,
              child: Card(
                child: ListTile(
                  title: Center(child: Text(homeData[index])),
                  onTap: () {
                    selectDesigns(homeData[index],context);
                    print("Tepped $homeData");
                  },
                ),
              ),
            ),
          );
        },
        itemCount: homeData.length,
      ),
    );
  }

  void selectDesigns(String itemName,BuildContext context) {
    print("selectDesigns $itemName");

    switch (itemName) {
      case "Design 1":
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return Design_One();
        }));
        break;
      case "Design 2":
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return Design_Two();
        }));

        break;
      case "Design 3":
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return Design_Three();
        }));

        break;
      case "Design 4":
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return Design_Four();
        }));

        break;
      case "Design 5":
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return Design_Five(orderNum: '1688068', rate: '799', itemImage: "https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg");
        }));

        break;
      case "Design 6":
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return Design_Six();
        }));

        break;
      case "Design 7":
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return Design_Seven();
        }));

        break;
    }
  }
}
