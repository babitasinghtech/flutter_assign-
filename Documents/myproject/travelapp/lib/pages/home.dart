import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "images/jake-blucker-tMzCrBkM99Y-unsplash.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, right: 20.0),
                  child: Row(
                    children: [
                      Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "images/pin.webp",
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Spacer(),
                      Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 25,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(60),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            "images/picture.jpeg",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160.0, left: 20.0),
                  child: Column(
                    children: [
                      Text(
                        "Traverlers",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                          fontSize: 60.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Travel Community App",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: MediaQuery.of(context).size.height / 2.7,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search your destination",
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                "images/picture.jpeg",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              "Shivam Gupta",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset("images/krishnajanmbhumi.avif"),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.blue),
                            Text(
                              "Krishna Janmabhumi, Mathura,india",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "its a birth place of lord krishna. Very beautiful place to visit.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_outline,
                                color: Colors.black, size: 30),
                            SizedBox(width: 10.0),
                            Text(
                              "Like ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.comment_outlined,
                                color: Colors.black, size: 30),
                            SizedBox(width: 10.0),
                            Text(
                              "Comments ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.0),
                    ],
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
