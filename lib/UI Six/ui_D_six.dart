import 'package:flutter/material.dart';

import 'ModalClass_Six_Items.dart';

class Design_Six extends StatefulWidget {
  const Design_Six({super.key});

  @override
  State<Design_Six> createState() => _Design_SixState();
}

class _Design_SixState extends State<Design_Six> {
  List<ModalClass_SixItems> listItems = [
    ModalClass_SixItems(
        itemImage: "https://m.media-amazon.com/images/I/816voyD8jiL.jpg",
        title: "Couch Potato | Women",
        stockNumber: "1",
        cashRate: "799",
        stockStatus: "In stock"),
    ModalClass_SixItems(
        itemImage: "https://m.media-amazon.com/images/I/816voyD8jiL.jpg",
        title: "Couch Potato | Men | Black",
        stockNumber: "1",
        cashRate: "799",
        stockStatus: "In stock"),
    ModalClass_SixItems(
        itemImage:
            "https://www.modernquests.com/cdn/shop/files/philosophy-home-panda-ceramic-mug-1.jpg?v=1690058163",
        title: "Mug | Explore",
        stockNumber: "1",
        cashRate: "399",
        stockStatus: "In stock"),
    ModalClass_SixItems(
        itemImage:
            "https://hellotempayy.com/cdn/shop/products/Flavour-Blast-Marinated-Tempeh-Combo.jpg?v=1665132161",
        title: "Combo Blahst 1 | Pack of 3",
        stockNumber: "1",
        cashRate: "699",
        stockStatus: "In stock"),
    ModalClass_SixItems(
        itemImage:
            "https://www.modernquests.com/cdn/shop/files/philosophy-home-panda-ceramic-mug-1.jpg?v=1690058163",
        title: "Mug | Orchard",
        stockNumber: "1",
        cashRate: "449",
        stockStatus: "In stock"),
    ModalClass_SixItems(
        itemImage:
            "https://hellotempayy.com/cdn/shop/products/Flavour-Blast-Marinated-Tempeh-Combo.jpg?v=1665132161",
        title: "Combo Blahst 2 | Explode",
        stockNumber: "1",
        cashRate: "599",
        stockStatus: "In stock"),
    ModalClass_SixItems(
        itemImage:
            "https://hellotempayy.com/cdn/shop/products/Flavour-Blast-Marinated-Tempeh-Combo.jpg?v=1665132161",
        title: "I see combo pack",
        stockNumber: "1",
        cashRate: "1299",
        stockStatus: "In stock"),
    ModalClass_SixItems(
        itemImage:
            "https://www.jiomart.com/images/product/original/rvnr266rv1/buddsbuddy-kids-oral-care-combo-ola-toothbrush-bubble-gum-toothpaste-leo-tongue-cleaner-product-images-orvnr266rv1-p595511280-0-202211241338.jpg?im=Resize=(420,420)",
        title: "Kids Combo Blahst",
        stockNumber: "1",
        cashRate: "1199",
        stockStatus: "In stock"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Catalogue"),
          bottom: const TabBar(
            isScrollable: false,
              indicatorColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              tabs: [
                Tab(text: "Products",),
                Tab(text: "Categories",),
              ]),
        ),
        body: TabBarView(
          children: [
            Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Image.network(
                                          listItems[index].itemImage,
                                          width: 100,
                                          height: 100,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(listItems[index].title,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                              Text(listItems[index].stockNumber),
                                              Text("₹${listItems[index].cashRate}"),
                                              Text(listItems[index].stockStatus,style: TextStyle(color: Colors.green),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(Icons.more_vert),
                                      Switch(
                                        value: true,
                                        onChanged: (context) {},
                                        activeColor: Colors.deepPurple,
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 1,
                                child: Container(
                                  color: Colors.grey[200],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.black,
                                      elevation: 0,
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.share),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Share Product",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: listItems.length),
              )
            ],
          ),
          Text("Categories"),]
        ),
      ),
    );
  }
}
