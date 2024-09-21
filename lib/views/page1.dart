import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    var arrTitles = ['Introduction','Install Software','Learn Tools','Tracking Sketsa'];
    var arrDuration = ['3h 30min','1h 30min','2h 30min','2h 30min'];
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 245, 1),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 23,
                    ),
                  ),
                ),
                Text(
                  "Details",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none_outlined,
                      size: 23,
                    ),
                  ),
                  // radius: 23,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(252, 252, 252, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Student",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/img1.png',
                        height: 30,
                        width: 30,
                      ),
                      Image.asset(
                        'assets/img2.png',
                        height: 30,
                        width: 30,
                      ),
                      Image.asset(
                        'assets/img3.png',
                        height: 30,
                        width: 30,
                      ),
                      Image.asset(
                        'assets/img4.png',
                        height: 30,
                        width: 30,
                      ),
                      Image.asset(
                        'assets/img3.png',
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Photoshop Editing Course",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(Icons.play_circle_outline),
                          SizedBox(
                            width: 8,
                          ),
                          Text("30 Lessons",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54))
                        ]),
                        Row(
                          children: [
                            Icon(Icons.watch_later_outlined),
                            SizedBox(
                              width: 8,
                            ),
                            Text("13h 30min",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54))
                          ],
                        )
                      ]),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Video",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SizedBox(
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
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Color.fromRGBO(94, 106, 122, 1),
                                    width: 2)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Icon(
                                Icons.lock,
                                size: 23,color: Color.fromRGBO(94, 106, 122, 1)
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text("${arrTitles[index]}",style: TextStyle(fontSize: 18),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.watch_later_outlined),
                                  SizedBox(width: 5,),
                                  Text("${arrDuration[index]}",style: TextStyle(fontWeight: FontWeight.w300),)
                                ],
                              )
                            ]
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1,color: Color.fromRGBO(94, 106, 122, 1) )
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.play_circle,color: Color.fromRGBO(185, 221, 107, 1),),
                                SizedBox(width: 3,),
                                Text("Play Video",style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: arrTitles.length,
                ),
              ),
            ),
            BottomAppBar(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(

                children: [
                  Image.asset('assets/enroll_img.png',width: 50,height: 50,),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(185, 221, 107, 1)
                      ),
                      child: Center(child: Text("Enroll Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      )),

    );
  }
}
