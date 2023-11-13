import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_week_6/UI%20Two/bottom_navigation_screens/manage/manage_class.dart';

class Manage_Two extends StatefulWidget {
  Manage_Two({super.key});

  @override
  State<Manage_Two> createState() => _Manage_TwoState();
}

class _Manage_TwoState extends State<Manage_Two> {
  List<Manage_Modal> datas = [
    Manage_Modal(
      icon: "assets/audios.svg",
      title: "Marketing\nDesigns",
      colors: Colors.red,
    ),
    Manage_Modal(
        icon: "assets/rupees.svg",
        title: "Online\nPayments",
        colors: Colors.green),
    Manage_Modal(
        icon: "assets/discount.svg",
        title: "Discount\nCoupons",
        colors: Colors.orange),
    Manage_Modal(
        icon: "assets/my_customers_icon.svg",
        title: "My\nCustomers",
        colors: Colors.teal),
    Manage_Modal(
        icon: "assets/qr_code_scan.svg",
        title: "Store OR\nCode",
        colors: Colors.grey),
    Manage_Modal(
        icon: "assets/extra_charge_icon.svg",
        title: "Extra\nCharges",
        colors: Colors.blue),
    Manage_Modal(
        icon: "assets/order_form_icon.svg",
        title: "Order\nForm",
        colors: Colors.purple),
  ];

  bool isWidgetVisible=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xf1f1f1ff),

      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 5 / 4,
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {


            return Card(
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: datas[index].colors,
                          ),
                          height: 50,
                          width: 50,
                          child: SvgPicture.asset(datas[index].icon)),
                       Visibility(visible: isWidgetVisible, child: Container(
                         alignment: Alignment.topCenter,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5.0),
                           color: Colors.green,
                         ),
                         child: const Padding(
                           padding: EdgeInsets.all(5.0),
                           child: Text(
                             "New",style: TextStyle(color: Colors.white),
                           ),
                         ),
                       )
                       )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    datas[index].title,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          );

        },
        itemCount: datas.length,
      ),
      
    );
  }
}
