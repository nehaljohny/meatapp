import 'package:flutter/material.dart';

import '../../fish_items.dart';
import '../../marinated_items.dart';
import '../../meat_items.dart';
import '../../readycook_items.dart';
import '../widgets/category_item_card.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Hey User,",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: const Text(
                        "Order fresh items for yourself",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 4,
                    ),
                    Center(
                      child: const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: GridView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,childAspectRatio: .7),
                          children: [
                            CategoryItemTile(
                              CategoryName: "Meat",
                              ImagePath: "assets/images/cate_meat.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MeatItems();
                                  },
                                ));
                              },
                              color: Colors.deepPurple,
                            ),
                            CategoryItemTile(
                              CategoryName: "Fish",
                              ImagePath: "assets/images/cate_fish.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return FishItems();
                                  },
                                ));
                              },
                              color: Colors.deepPurple,
                            ),
                            CategoryItemTile(
                              CategoryName: "Marinated Items",
                              ImagePath: "assets/images/cate_marinated.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MarinatedItems();
                                  },
                                ));
                              },
                              color: Colors.deepPurple,
                            ),
                            CategoryItemTile(
                              CategoryName: "Ready to Cook",
                              ImagePath: "assets/images/cte_ready to cook.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return ReadyToCookItems();
                                  },
                                ));
                              },
                              color: Colors.deepPurple,
                            ),
                          ]),
                    )
                  ],
                ))));
  }
}

