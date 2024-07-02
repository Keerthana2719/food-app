import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List img = [
    "img/burger.jpg",
    "img/pizza.jpg",
    "img/chicken.jpg",
    "img/cesarsalad.jpg",
  ];

  List name = [
    "Cheese Burger",
    " Pizza",
    "Chicken Burger",
    "Chicken Burger",
  ];
  List sub = [
    "Steak House",
    "Grill Bar",
    "Irish Pub",
    "Chicken Burger",
  ];
  List price = [
    "\$5.99",
    "\$12.45",
    "\$12.45",
    "\$12.45",
  ];

  Cat(String name){


    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(width: 100,height: 52,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(26)),child: Center(child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 52),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.3),
                              blurRadius: 25,
                              spreadRadius: 3,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            "img/derict.jpg",
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Text(
                    "Popular Menu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search..",
                    prefixIcon: Icon(Icons.search_rounded),
                    //  suffixIcon: Image.asset("img/filter.png",width: 2,height: 2,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(54),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(children: [
                
                  Cat("burger"),
                  Cat("Sandwith"),
                  Cat("pizza"),
                  Cat("burger"),
                  Cat("burger"),
                  Cat("burger"),
                  Cat("burger"),
                
                ],),
              ),
              
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.6,
                ),
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(0, 9 * 2),
                        ),
                      ],
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Image.asset(
                                img[index],
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                "img/Group 5 (1).png",
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            name[index],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(height: 6),
                          Text(
                            sub[index],
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            price[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ListView()));
                                 },
                                  child: Container(
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20))),
                                    child: Center(
                                      child: Image.asset("img/Group 23.png"),
                                    ),
                                  )))
                        ]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}
