import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  title: "kCal",
  home: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/splashh-screen.png"),
                        colorFilter:
                        ColorFilter.mode(Colors.green.withOpacity(0.2),
                        BlendMode.darken),
                        fit: BoxFit.cover)
                        ),
                child: Column(children: <Widget> [
                  SizedBox(
                    height: 200,
                           ),
                  Text(
                     "kCal",
                     textAlign: TextAlign.center,
                     style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 65, color: Colors.white, fontFamily: 'ARLRDBD'),
                   ), 
                   SizedBox(
                    height: 140,
                           ),
                  MaterialButton(
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => SecondScreen()));
                      },
                    minWidth: 170,
                    height: 40,
                    elevation: 8,
                    color: Colors.green[500],
                    child: 
                  Text(
                    "Start Journey",
                    style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.white,
                    ),
                    ),
                  ),

                  SizedBox(
                    height: 50,
                           ),

                  Text(
                     "ZUAMICA",
                     textAlign: TextAlign.center,
                     style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.green[100]),
                   )
                ],
                )
      ),
    )
    );
  }
}

class SecondScreen extends StatelessWidget{
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(child: 
     Container(
        color: Colors.white70,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: 
            Column(children: [
              SizedBox(
                    height: 50,
                           ),
              Text(
                "kCal",
                textAlign: TextAlign.center,
                     style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.green[300], fontFamily: 'ARLRDBD'),
              ),
              
              CarouselSlider(

                items: [
                  Container(
                  
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/pic1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  // child: Column(children: [
                  //   SizedBox(
                  //   height: 200,
                  //          ),
                  //   Text("halu bebu"),
                  // ],),
                  
                ),

                  Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/pic2.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/pic3.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],

              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
               ),
              ),
               SizedBox(
                    height: 50,
                           ),
            MaterialButton(
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => ThirdScreen()));
                      },
                    minWidth: 200,
                    height: 40,
                    elevation: 8,
                    color: Colors.red[300],
                    child: 
                  Text(
                    "Get Started",
                    style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.white,
                    ),
                    ),
                  ),
            SizedBox(
                    height: 50,
                           ),
            Container(
              child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                "Already have an account?",
                textAlign: TextAlign.center,
                 style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.black,
                    ),
              ),
              Text(
                "Log in",
                textAlign: TextAlign.center,
                 style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.green[200],
                    ),
              ),

            ],)
            ,
            )
            
            ],
            ),
      
      ),
      ),
      );
  }
}


class ThirdScreen extends StatelessWidget{
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child:
          Text(
            "Favorites",
            textAlign: TextAlign.center,
            style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.black,
            ),
          ),
          ),
        
        SizedBox(
            height: 20,
          ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          MaterialButton(
            onPressed: (){
            },
                minWidth: 100,
                height: 60,
                elevation: 8,
                color: Colors.green[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.zero,
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.zero,
                    )),
                child: 
              Text(
                "Recipe",
                style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
                ),
                ),
            ),
          MaterialButton(
            onPressed: (){
            },
                minWidth: 100,
                height: 60,
                elevation: 8,
                color: Colors.green[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.circular(15.0),
                    )),
                child: 
              Text(
                "Foods",
                style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
                ),
                ),
            )
        ],
        ),
        ],
        
      )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
      items:
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
          backgroundColor: Colors.green[200],
          ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "search",
          backgroundColor: Colors.green[200],
          ),

        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: "camera",
          backgroundColor: Colors.green[200],
          ),

        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: Colors.red[300],),
          label: "favorite",
          
          backgroundColor: Colors.green[200],
          )
      ],
      ),
    );
  }
  }
