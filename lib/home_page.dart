import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:our_menu/toast_with_ham.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 0;
  int b = 0;
  List photo = [
    'asstes/images/coffee.png',
    'asstes/images/data.png',
    'asstes/images/sushi.png',
    'asstes/images/salad.png',
    'asstes/images/coffee.png'
  ];

  List name = ['Breakfast', 'Sets', 'Sushi', 'Salads', 'Cofee'];
  List list1 = [
    'asstes/images/bell icons.png',
    'asstes/images/book icons.png',
    'asstes/images/menu icon.png'
  ];
  List list2 = [
    'Cheese Pancakes',
    'Toast with Ham',
    'Passta with cheese',
  ];
  List list3 = [
    '\$4,29',
    '\$3,28',
    '\$5,30',
  ];
  List list4 = [
    '\$4,89',
    '',
    '',
  ];

  List list5 = [
    '140g',
    '120g',
    '110g',
  ];
  List list6 = [
    'asstes/images/png.jpg',
    'asstes/images/png2.jpg',
    'asstes/images/Png3.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              size: 30,
                              color: Colors.indigo,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Our menu",
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                "in the restaurant on",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                " Nevsky Prospekt 42",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 150,
                              width: 400,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.shade100,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(40)),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: List.generate(
                                      5,
                                      (index) => GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            a = index;
                                          });
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              decoration: BoxDecoration(
                                                color: a == index
                                                    ? Colors.green
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  photo[index],
                                                  height: 40,
                                                  width: 40,
                                                  color: a == index
                                                      ? Colors.white
                                                      : Colors.indigo,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              name[index],
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: a == index
                                                    ? Colors.indigo
                                                    : Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "8 items",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: List.generate(
                              3,
                              (index) => Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TosatWithHam(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            list6[index],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 2),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: index == 0
                                                  ? Colors.orange.shade100
                                                  : Colors.green.shade100),
                                          child: Text(
                                            index == 0 ? "Sale" : "New",
                                            style: TextStyle(
                                                color: index == 0
                                                    ? Colors.orange
                                                    : Colors.green),
                                          ),
                                        ),
                                        Text(
                                          list2[index],
                                          style: TextStyle(
                                            color: Colors.indigo,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              list3[index],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo,
                                                fontSize: 22,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              list4[index],
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              list5[index],
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          b = index;
                        });
                      },
                      child: Image.asset(
                        list1[index],
                        height: 30,
                        width: 30,
                        color: b == index ? Colors.green : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
