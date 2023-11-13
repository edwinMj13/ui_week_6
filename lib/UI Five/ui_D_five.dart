import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Design_Five extends StatefulWidget {
  String orderNum;
  String rate;
  String itemImage;

  Design_Five(
      {super.key,
      required this.orderNum,
      required this.rate,
      required this.itemImage});

  @override
  State<Design_Five> createState() =>
      _Design_FiveState(orderNum: orderNum, rate: rate, itemImage: itemImage);
}

class _Design_FiveState extends State<Design_Five> {
  String orderNum;
  String rate;
  String itemImage;

  _Design_FiveState(
      {required this.orderNum, required this.rate, required this.itemImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Order $orderNum"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "May 31, 05:42 PM",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.deepPurple,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Delivered",
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 1,
                child: Container(
                  color: Colors.grey[300],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "1 ITEM",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.deepPurple,
                        elevation: 0,
                        padding: EdgeInsets.all(0.0),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.receipt_sharp, color: Colors.deepPurple),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "RECEIPT",
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Image.network(
                        itemImage,
                        height: 100,
                        width: 100,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Explore | Men | Navy Blue",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        const Text("1 Piece"),
                        const Text("Size: XL"),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1.0),
                                      border: Border.all(
                                        color: Colors.deepPurple,
                                        width: 1.0,
                                      ),
                                      color: Colors.deepPurple[50]),
                                  child: const Center(child: Text("1")),
                                ),
                                Text(
                                  " x ₹$rate",
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "₹$rate",
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 1,
                child: Container(
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: Text(
                    "Item Total",
                    style: TextStyle(fontSize: 16),
                  )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("₹$rate"),
                    ],
                  )),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    "Delivery",
                    style: TextStyle(fontSize: 16),
                  )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "FREE",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: Text(
                    "Grand Total",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "₹$rate",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 1,
                child: Container(
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("CUSTOMER DETAILS",style: TextStyle(fontSize: 17,color: Colors.grey)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0.0),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.deepPurple[300],
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.deepPurple,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "SHARE",
                          style:
                              TextStyle(color: Colors.deepPurple, fontSize: 16),
                        )
                      ],
                    ))
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deepa",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("+91-8138978885",
                              style: TextStyle(fontSize: 16, color: Colors.grey)),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                    width: 1, color: Colors.deepPurple)),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.local_phone_rounded,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          SvgPicture.asset(
                            "assets/whatsappsss.svg",
                            width: 35.0,
                            height: 35.0,
                          ),
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Address",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "D 1101 Chartered Beverly Hills, Subramanyapura P.O",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Expanded(flex: 1, child: Text(""))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "City",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text("Banglore", style: TextStyle(fontSize: 16)),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pincode",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold)),
                              Text("560061", style: TextStyle(fontSize: 16)),
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Payment",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Online",
                            style: TextStyle(fontSize: 16),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.green[50],
                              border: Border.all(
                                width: 1,
                                color: Colors.green.shade100,
                              )
                            ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 2.0,bottom: 2.0),
                                child: Text("PAID",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green)),
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
              SizedBox(
                height: 1,
                child: Container(
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ADDITION INFORMATION",style: TextStyle(fontSize: 17,color: Colors.grey),),
                        SizedBox(height: 10,),
                        Text("State",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text("Karnataka",style: TextStyle(fontSize: 16),),
                        SizedBox(height: 10,),
                        Text("Email",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text("edwinbabymj@gmail.com",style: TextStyle(fontSize: 16),),
                        SizedBox(height: 10,),

                      ],),
                  ),
                  Expanded(flex:1,child: Text("")),
                ],
              ),
              SizedBox(height: 25,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    width: 1,
                    color: Colors.deepPurple.shade300,
                  ),
                  minimumSize: const Size.fromHeight(40),
                  backgroundColor: Colors.deepPurple[50],
                  elevation: 0,
                  shadowColor: null,
                ),
                  onPressed: (){

              }, child: const Text("Share Reciept",style: TextStyle(color: Colors.deepPurple),)),
              SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  }
}
