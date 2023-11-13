import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Design_Four extends StatefulWidget {
  const Design_Four({super.key});

  @override
  State<Design_Four> createState() => _Design_FourState();
}

class _Design_FourState extends State<Design_Four> {
  bool typeBussiEXP=false;
  bool refPolicyEXP=false;
  bool autochargEXP=false;
  bool payMethodEXP=false;
  bool freeyrialEXP=false;
  bool custoDomaiEXP=false;

  YoutubePlayerController? youtubePlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    youtubePlayerController=YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=UDVtMYqUAyw&list=RDUDVtMYqUAyw&start_radio=1")!,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
      isLive: false,

    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dukaan Premium"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 1,)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.ac_unit,
                              size: 60,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/dukaan_icon.png",
                                  width: 150,
                                  height: 40,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    "PREMIUM",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),

                        const Text("Get Dukaan Premium for just",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                        Text("₹4,999/year",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                        Text("All the advanced features for scaling your",style: TextStyle(color: Colors.grey,fontSize: 16),),
                        Text("business",style: TextStyle(color: Colors.grey,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Features",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                    SizedBox(height: 10,),
                     Row(children: [
                       SvgPicture.asset("assets/world_wide_web_icon.svg",height: 70,width: 70,),
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Text("Custom domain name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           Text("Get your own custom domain and build your brand on the internet.",style: TextStyle(color: Colors.grey,fontSize: 17),)
                         ],
                         ),
                       ),
                     ],),
                    SizedBox(height: 10,),
                    Row(children: [
                      SvgPicture.asset("assets/world_wide_web_icon.svg",height: 70,width: 70,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Verified seller badge",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("Get green verified badge under your store name build trust.",style: TextStyle(color: Colors.grey,fontSize: 17),)
                          ],
                        ),
                      ),
                    ],),
                    SizedBox(height: 10,),
                    Row(children: [
                      SvgPicture.asset("assets/world_wide_web_icon.svg",height: 70,width: 70,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dukaan for PC",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("Access all the exclusive premium features on Dukaan for PC.",style: TextStyle(color: Colors.grey,fontSize: 17),)
                          ],
                        ),
                      ),
                    ],),
                    SizedBox(height: 10,),
                    Row(children: [
                      SvgPicture.asset("assets/world_wide_web_icon.svg",height: 70,width: 70,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Priority Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("Get your questions resolved with our priority customer support.",style: TextStyle(color: Colors.grey,fontSize: 17),)
                          ],
                        ),
                      ),
                    ],),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              SizedBox(height: 5,child: Container(
                color: Colors.grey[300],
              ),),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                child: Text("What is Dukaan Premium?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
              ),
              YoutubePlayerBuilder(
                  player: YoutubePlayer(
                      controller: youtubePlayerController!,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.amber,
                      progressColors: ProgressBarColors(
                        playedColor: Colors.amber,
                        handleColor: Colors.amberAccent,
                      ),),
                  builder: (ctx,player){
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                        child: player,
                      ),
                    );
                  }),
              SizedBox(height: 10,),

              SizedBox(height: 5,child: Container(
                color: Colors.grey[300],
              ),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                child: Text("Frequently asked questions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
              ),
              SizedBox(height: 10,),
              ExpansionTile(
                  title: Text("What types of bussiness can use Dukaan Premium?"),
                trailing: Icon(typeBussiEXP? Icons.remove:Icons.add),
                children: [
                  ListTile(
                    title: Text("Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone"
                        "who wants to sell their products/services online - Dukaan is the perfect platform for you."),
                  )
                ],
                onExpansionChanged:(expanded) {setState(() {
                  typeBussiEXP=expanded;
                });
                    },
              ),
              SizedBox(height: 1,child: Container(
                color: Colors.grey[200],
              ),),
              ExpansionTile(
                title: Text("What is your refund poilicy?"),
                trailing: Icon(refPolicyEXP? Icons.remove:Icons.add),
                children: [
                  ListTile(
                    title: Text("Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone"
                        "who wants to sell their products/services online - Dukaan is the perfect platform for you."),
                  )
                ],
                onExpansionChanged:(expanded) {setState(() {
                  refPolicyEXP=expanded;
                });
                },
              ),
              SizedBox(height: 1,child: Container(
                color: Colors.grey[200],
              ),),
              ExpansionTile(
                title: Text("Will there be an automatic charge after the paid trial?"),
                trailing: Icon(autochargEXP? Icons.remove:Icons.add),
                children: [
                  ListTile(
                    title: Text("Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone"
                        "who wants to sell their products/services online - Dukaan is the perfect platform for you."),
                  )
                ],
                onExpansionChanged:(expanded) {setState(() {
                  autochargEXP=expanded;
                });
                },
              ),
              SizedBox(height: 1,child: Container(
                color: Colors.grey[200],
              ),),
              ExpansionTile(
                title: Text("What payment methods do you offer?"),
                trailing: Icon(payMethodEXP? Icons.remove:Icons.add),
                children: [
                  ListTile(
                    title: Text("Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone"
                        "who wants to sell their products/services online - Dukaan is the perfect platform for you."),
                  )
                ],
                onExpansionChanged:(expanded) {setState(() {
                  payMethodEXP=expanded;
                });
                },
              ),
              SizedBox(height: 1,child: Container(
                color: Colors.grey[200],
              ),),
              ExpansionTile(
                title: Text("What happens when my free trial ends?"),
                trailing: Icon(freeyrialEXP? Icons.remove:Icons.add),
                children: [
                  ListTile(
                    title: Text("Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone"
                        "who wants to sell their products/services online - Dukaan is the perfect platform for you."),
                  )
                ],
                onExpansionChanged:(expanded) {setState(() {
                  freeyrialEXP=expanded;
                });
                },
              ),
              SizedBox(height: 1,child: Container(
                color: Colors.grey[200],
              ),),
              ExpansionTile(
                title: Text("What are the terms for the custom domain?"),
                trailing: Icon(custoDomaiEXP? Icons.remove:Icons.add),
                children: [
                  ListTile(
                    title: Text("Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone"
                        "who wants to sell their products/services online - Dukaan is the perfect platform for you."),
                  )
                ],
                onExpansionChanged:(expanded) {setState(() {
                  custoDomaiEXP=expanded;
                });
                },
              ),
              SizedBox(height: 1,child: Container(
                color: Colors.grey[200],
              ),),
              SizedBox(height: 10,),
              SizedBox(height: 5,child: Container(
                color: Colors.grey[300],
              ),),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                child: const Text("Need help? Get in touch",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: Row(children: [
                  Expanded(
                    flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey.shade300,width: 1)
                          ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
                      child: Column(children: [
                          Icon(Icons.chat_bubble_outline,size: 35,),
                          Text("Live Chat"),
                      ],),
                    ),
                  ),
                      )),
                  Expanded(
                    flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey.shade300,width: 1)
                          ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
                      child: Column(children: [
                          Icon(Icons.phone_outlined,size: 35,),
                          Text("Phone Call"),
                      ],),
                    ),
                  ),
                      ))
                ],)),
              ),
              SizedBox(height: 1,child: Container(
                color: Colors.grey[200],
              ),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text("Select Domain",style: TextStyle(fontSize: 17,color: Colors.deepPurple,fontWeight: FontWeight.bold),)),
                      Expanded(
                          flex: 1,
                          child: ElevatedButton(onPressed: (){

                      }, child: Text("Get Premium")))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
/*
            child: Column(
            children: [

            ],
          ),

  * */
}
