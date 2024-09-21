import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    List avatarImages = [
      'assets/img1.png',
      'assets/img2.png',
      'assets/img4.png',
      'assets/circular_avatar.png'
    ];
    List adobeTools = [
      'assets/adobe_illustrator.png',
      'assets/lightroom.png',
      'assets/photoshop.png',
      'assets/premirepro.png',
      'assets/xd.png',
    ];
    List adobeToolsTitle = [
      'Illustrator Editing Course',
      'Lightroom Editing Course',
      'Photoshop Editing Course',
      'Premiere Pro Editing Course',
      'Adobe XD Editing Course',
    ];
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 245, 1),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/img4.png',
                    width: 60,
                    height: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Christ Amandla",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text("Lets Learning to smart")
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(185, 221, 107, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(212, 235, 162, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mathematics Course"),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(185, 221, 107, 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    Text("19 Nov, 2023")
                                  ],
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromRGBO(212, 235, 162, 1),
                            child: Icon(
                              Icons.check_circle,
                              color: Color.fromRGBO(185, 221, 107, 1),
                              size: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Completed",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "20",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          Container(
                            color: Colors.white,
                            height: 40,
                            width: 1,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromRGBO(212, 235, 162, 1),
                            child: Icon(
                              Icons.watch_later_rounded,
                              color: Color.fromRGBO(185, 221, 107, 1),
                              size: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hours Spent",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "455",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Course",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      width: 170,
                      margin: EdgeInsets.only(right: 15),
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Image.asset(adobeTools[index], width: 50),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            adobeToolsTitle[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                for (int i = 0; i < avatarImages.length; i++)
                                  Align(
                                    widthFactor: 0.7,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage(avatarImages[i]),
                                    ),
                                  ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Participant",
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 2,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(254, 156, 67, 1),
                                    size: 20,
                                  ),
                                  Text(
                                    "4.8 (230)",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.play_circle_outline_rounded,
                                    size: 20,
                                  ),
                                  Text(
                                    "30 Lessons",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: adobeToolsTitle.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Course",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      // width: MediaQuery.of(context).size.width,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(237, 242, 243, 1),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Image.asset(
                              adobeTools[index],
                              width: 40,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${adobeToolsTitle[index]}",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(254, 156, 67, 1),
                                    size: 20,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("4.8 (230)"),
                                  SizedBox(width: 15,),
                                  Icon(
                                    Icons.play_circle_outline,
                                    size: 20,
                                  ),
                                  SizedBox(width: 5,),
                                  Text("30 Lessons"),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: adobeToolsTitle.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          unselectedItemColor: Colors.black12,
          selectedItemColor: Color.fromRGBO(185, 221, 107, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_sharp), label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
          ]),
    );
  }
}
