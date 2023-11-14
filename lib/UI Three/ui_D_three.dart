import 'package:flutter/material.dart';

import 'ModalClass_Three_LIST.dart';

class Design_Three extends StatefulWidget {
  const Design_Three({super.key});

  @override
  State<Design_Three> createState() => _Design_ThreeState();
}

class _Design_ThreeState extends State<Design_Three> {
  List<ModalList_Three> listItems = [
    ModalList_Three(
        itemImage:
            "https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg",
        orderNum: "1234321",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "799",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "1234321",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "397",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "9485769",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "756.4",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg",
        orderNum: "4657834",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "123",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "7586940",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "234",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg",
        orderNum: "3453093",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "234",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "8720944",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "456",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg",
        orderNum: "1111000",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "567",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "5553211",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "345.6",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg",
        orderNum: "9995433",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "1245",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "1568864",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "3432",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
            "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "0323555",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "345.3",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
        "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "5553211",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "345.6",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
        "https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg",
        orderNum: "9995433",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "1245",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
        "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "1568864",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "3432",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
        "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "0323555",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "345.3",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
        "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "5553211",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "345.6",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
        "https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg",
        orderNum: "9995433",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "1245",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
        "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "1568864",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "3432",
        orderStatus: "Successful"),
    ModalList_Three(
        itemImage:
        "https://d1xv5jidmf7h0f.cloudfront.net/circleone/images/products_gallery_images/Custom-Embroidered-T-Shirt-Polo-Neck.jpg",
        orderNum: "0323555",
        dNt: "Jul 12 02:06 PM",
        currencyStatus: "58860200000138",
        cash: "345.3",
        orderStatus: "Successful"),
  ];
  bool chipSelection = false;
  int sliderValue = 13332;
  ScrollController _scrollController=ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Payments"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Transaction Limit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "A free limit up to which you will recieve "
                        "the online payments directly in your bank",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          trackShape: CustomTrackShape(),
                        ),
                        child: Slider(
                            value: sliderValue.toDouble(),
                            min: 1,
                            max: 50000,
                            activeColor: Colors.deepPurple,
                            inactiveColor: Colors.grey[300],
                            onChanged: (double newVal) {
                              sliderValue = newVal.round();
                            }),
                      ),
                      Text("$sliderValue left out of ₹50000"),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Increase limit")),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Default Method",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Text("Onlime Payments"),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Payment Profile",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Text("Bank Account"),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios_sharp))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Payments Overview",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Text("Life Time"),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_down))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orange,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AMOUNT ON HOLD",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "₹0",
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.green,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AMOUNT RECIEVED",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "₹13,332",
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChip(
                  showCheckmark: false,
                  backgroundColor: Colors.grey[300],
                  label: const Padding(
                    padding: EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Text("On hold"),
                  ),
                  onSelected: (bool value) {},
                ),
                FilterChip(
                  showCheckmark: false,
                  backgroundColor: Colors.grey[300],
                  label: const Padding(
                    padding: EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Text(
                      "Payouts(14)",style: TextStyle(color: Colors.white),
                    ),
                  ),
                  selectedColor: Colors.blue,
                  selected: true,
                  onSelected: (bool value) {
                    setState(() {
                      chipSelection = !chipSelection;
                    });
                  },
                ),
                FilterChip(
                  showCheckmark: false,
                  backgroundColor: Colors.grey[300],
                  label: const Padding(
                    padding: EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Text("Refunds"),
                  ),
                  onSelected: (bool value) {},
                ),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Image.network(
                                  listItems[index].itemImage,
                                  width: 50,
                                  height: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Column(
                                    children: [
                                      Text("Order #${listItems[index].orderNum}",style: TextStyle(fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5,),
                                      Text(listItems[index].dNt,style: const TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                ),
                              ],
                            )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("₹${listItems[index].cash}"),
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        color: Colors.green,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(listItems[index].orderStatus)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "₹${listItems[index].cash} deposited to ${listItems[index].currencyStatus}",
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: listItems.length),
          ],
        ),
      ),
    );
  }
}
class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

