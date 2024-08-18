import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Howdy Macell",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.corporatefinanceinstitute.com/assets/real-estate.jpeg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              "Discover",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Suitable Home",
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(.5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0))),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Find a good home",
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Stack(
                  children: [
                    Icon(Icons.notifications_none),
                    Positioned(
                      top: 1.0,
                      right: 1.0,
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 400.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  homeWidget(),
                  homeWidget(),
                  homeWidget(),
                  homeWidget(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            index == 1
                ? _selectedWidet(Icon(Icons.home), "Home")
                : IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                  ),
            index == 2
                ? _selectedWidet(Icon(Icons.bookmark), "Bookmark")
                : IconButton(
                    icon: Icon(Icons.bookmark),
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                  ),
            index == 3
                ? _selectedWidet(Icon(Icons.message), "Message")
                : IconButton(
                    icon: Icon(Icons.message),
                    onPressed: () {
                      setState(() {
                        index = 3;
                      });
                    },
                  ),
            index == 4
                ? _selectedWidet(Icon(Icons.people), "People")
                : IconButton(
                    icon: Icon(Icons.people),
                    onPressed: () {
                      setState(() {
                        index = 4;
                      });
                    },
                  ),
          ],
        ),
      ),
    );
  }

  Widget homeWidget() {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 250,
      height: 400,
      child: Stack(
        children: [
          Container(
            width: 250.0,
            height: 375.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.corporatefinanceinstitute.com/assets/real-estate.jpeg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
          ),
          Positioned(
            bottom: 1.0,
            right: 16.0,
            child: FloatingActionButton(
              backgroundColor: Colors.orange,
              mini: true,
              child: Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Family House",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      "Yangon, Shwe Taung Kyar",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _selectedWidet(Icon icon, String str) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0),
            bottomLeft: Radius.circular(32.0),
            bottomRight: Radius.circular(32.0),
          ),
          color: Colors.purple.withOpacity(.4)),
      child: Row(
        children: <Widget>[icon, Text(str)],
      ),
    );
  }
}
