import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              left: 15,
              right: 15,
              bottom: 15,
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 3,
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                  image: DecorationImage(image: AssetImage('assets/dress.jpg'), fit: BoxFit.contain)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "LAMINATED",
                                style: TextStyle(fontSize: 25, fontFamily: 'YeniFont', fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Louis Voittom",
                                style: TextStyle(fontSize: 16, fontFamily: 'YeniFont', color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width - 170,
                                child: Text(
                                  "One bottom V-neck sling Long sleeved waist female stittign dress ",
                                  style: TextStyle(fontSize: 13, fontFamily: 'YeniFont', color: Colors.grey),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$6500",
                              style: TextStyle(fontFamily: "YeniFont", fontSize: 22),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: FloatingActionButton(
                                child: Icon(Icons.arrow_forward_ios),
                                backgroundColor: Colors.brown,
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 2,
              left: 50,
              child: Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.4), borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "LAMINATED",
                    style: TextStyle(fontFamily: 'YeniFont', color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
