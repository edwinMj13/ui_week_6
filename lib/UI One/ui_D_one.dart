
import 'package:flutter/material.dart';

class Design_One extends StatefulWidget {
   const Design_One(     {super.key}    );

  @override
  State<Design_One> createState() => _Design_OneState();
}

class _Design_OneState extends State<Design_One> {

  bool swValue=false;
  String switchValue="off";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Additional Information"),
      ),
      body: SafeArea(child: Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.share,size: 30,),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Share Dukaan App",style: TextStyle(
                      fontSize: 17,
                    ),),
                  ],
                ),
              ),
              IconButton(onPressed: (){
              }, icon: const Icon(Icons.arrow_forward_ios_outlined)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.language,size: 30,),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Change Language",style: TextStyle(
                      fontSize: 17,
                    ),),
                  ],
                ),
              ),
              IconButton(onPressed: (){
              }, icon: Icon(Icons.arrow_forward_ios_outlined)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Image.asset("assets/whatsapp_icon.png",width: 30,height: 30,),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("WhatsApp Chat Support",style: TextStyle(
                      fontSize: 17,
                    ),),
                  ],
                ),
              ),
              Switch(value: swValue, onChanged:
                toogleSwitch,
                activeColor: Colors.deepPurple,
              )
            ],
          ),
           const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.lock,size: 30,),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Privacy Policy",style: TextStyle(
                      fontSize: 17,
                    ),),
                  ],
                ),
              )
            ],
          ),
           const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.star_rate,size: 30,),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Rate Us",style: TextStyle(
                      fontSize: 17,
                    ),),
                  ],
                ),
              )
            ],
          ),
           const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.logout,size: 30,),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Sign Out",style: TextStyle(
                      fontSize: 17,
                    ),),
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
  void toogleSwitch(bool isSelected){
    print("$swValue");
    setState(() {
      swValue=!swValue;
    });

    if(swValue==false){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Switch is off")));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Switch is on")));

    }

  }
}
