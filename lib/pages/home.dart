import 'package:flutter/material.dart';
import 'package:chatroom/pages/bottom_navy_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              Scaffold(
                backgroundColor: Colors.purple[200],
                body: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.purple[300],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              size: 35,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              "Home",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.black,
                    ),
                    SizedBox(height: 40,),
                    Text("inja ye chizi baadan bayad bezaram"),
                    Text("دارم بهش فکر میکنم"),
                  ],
                ),
              ),
              Scaffold(
                backgroundColor: Colors.red[200],
                body: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.red[300],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.chat,
                              size: 35,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              "Public Chat",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Scaffold(
                backgroundColor: Colors.green[200],
                body: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.green[300],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.contact_mail,
                              size: 35,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              "Private Chat",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Scaffold(
                backgroundColor: Colors.blue[200],
                body: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.blue[300],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.cloud_upload,
                              size: 35,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              "Upload",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
              activeColor: Colors.purple[500],
              inactiveColor: Colors.blueGrey[500],
          ),
          BottomNavyBarItem(
              title: Text('Public Chat'),
              icon: Icon(Icons.chat),
              activeColor: Colors.red[500],
              inactiveColor: Colors.blueGrey[500],
          ),
          BottomNavyBarItem(
              title: Text('Private Chat'),
              icon: Icon(Icons.contact_mail),
              activeColor: Colors.green[500],
              inactiveColor: Colors.blueGrey[500],
          ),
          BottomNavyBarItem(
              title: Text('Upload'),
              icon: Icon(Icons.cloud_upload),
              activeColor: Colors.blue[500],
              inactiveColor: Colors.blueGrey[500],
          ),
        ],
      ),
    );
  }
}
