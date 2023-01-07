import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePage createState()=> _HomePage();
}
class _HomePage extends State<HomePage> {
  int _value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text('CLEAN MAID SERVEICES',
            style: TextStyle(fontSize: 25)),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[

            Container(
                padding: const EdgeInsets.all(2),
                child: Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder:
                                        (context)=>SwipeScreen()));
                              },
                              child: Image.asset("assets/images/Swipe.jpg",
                                  fit: BoxFit.cover, // this is the solution for border
                                  width: 110.0,
                                  height: 110.0)
                          ),
                          Expanded(
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(

                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text("SWIPPING SERVICE",
                                          style:TextStyle(fontWeight:
                                          FontWeight.bold,
                                          fontSize: 20,
                                              color: Colors.blueAccent,),
                                          textAlign:TextAlign.center),
                                      Text("Description: Full house swiping service by our experienced housekeepers",
                                          textAlign:TextAlign.left),
                                      Text("Price: RM50/hr",
                                          textAlign:TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  )
                              )
                          )
                        ]
                    )
                )
            ),

            Container(
                padding: const EdgeInsets.all(2),
                child: Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>MoppingScreen()));

                              },
                              child: Image.asset("assets/images/Mop.jpg",
                                  fit: BoxFit.cover, // this is the solution for border
                                  width: 110.0,
                                  height: 110.0)
                          ),
                          Expanded(
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text("MOPPING SERVICE",
                                          style:TextStyle(fontWeight:FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blueAccent,),
                                          textAlign:TextAlign.center),
                                      Text("Description: Full house mopping service by our finest housekeepers",
                                          textAlign:TextAlign.left),
                                      Text("Price: RM50/hr",
                                          textAlign:TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  )
                              )
                          )
                        ]
                    )
                )
            ),

            Container(
                padding: const EdgeInsets.all(2),
                child: Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push( MaterialPageRoute(builder:(context)=>VacuumScreen()));
                              },
                              child: Image.asset("assets/images/vacuum.jpg",
                                  fit: BoxFit.cover, // this is the solution for border
                                  width: 110.0,
                                  height: 110.0)
                          ),
                          Expanded(
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text("VACUUM SERVICE",
                                          style:TextStyle(fontWeight:
                                          FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blueAccent,),
                                          textAlign:TextAlign.center),
                                      Text("Description: Full house vacuum service by our talented housekeepers",
                                          textAlign:TextAlign.left),
                                      Text("Price: RM75/hr",
                                          textAlign:TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  )
                              )
                          )
                        ]
                    )
                )
            ),

            Container(
                padding: const EdgeInsets.all(2),
                child: Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push( MaterialPageRoute(builder:(context)=>OrganiseScreen()));
                              },
                              child: Image.asset("assets/images/organizing.jpg",
                                  fit: BoxFit.cover, // this is the solution for border
                                  width: 110.0,
                                  height: 110.0)
                          ),
                          Expanded(
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text("ORGANISING SERVICE",
                                          style:TextStyle(fontWeight:
                                          FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blueAccent,),
                                          textAlign:TextAlign.center),
                                      Text("Description: Full house vacuum service by our talented housekeepers",
                                          textAlign:TextAlign.left),
                                      Text("Price: RM100/hr",
                                          textAlign:TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  )
                              )
                          )
                        ]
                    )
                )
            ),

            Container(
                padding: const EdgeInsets.all(2),
                child: Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push( MaterialPageRoute(builder:(context)=>SanitiseScreen()));
                              },
                              child: Image.asset("assets/images/sanitise.png",
                                  fit: BoxFit.cover, // this is the solution for border
                                  width: 110.0,
                                  height: 110.0)
                          ),
                          Expanded(
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text("SANITISATION SERVICE",
                                          style:TextStyle(fontWeight:
                                          FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blueAccent,),
                                          textAlign:TextAlign.center),
                                      Text("Description: Full house sanitisation service by our housekeepers",
                                          textAlign:TextAlign.left),
                                      Text("Price: RM100/hr",
                                          textAlign:TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  )
                              )
                          )
                        ]
                    )
                )
            ),

            Container(
                padding: const EdgeInsets.all(2),
                child: Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push( MaterialPageRoute(builder:(context)=>FullsetScreen()));
                              },
                              child: Image.asset("assets/images/Full Set.jpg",
                                  fit: BoxFit.cover, // this is the solution for border
                                  width: 110.0,
                                  height: 110.0)
                          ),
                          Expanded(
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text("FULL SERVICE",
                                          style:TextStyle(fontWeight:
                                          FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blueAccent,),
                                          textAlign:TextAlign.center),
                                      Text("Description: Full service by our talented housekeepers",
                                          textAlign:TextAlign.left),
                                      Text("Price: RM200/hr",
                                          textAlign:TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  )
                              )
                          )
                        ]
                    )
                )
            ),
          ]),
    );
  }
}

class SwipeScreen extends StatefulWidget {
  @override
  _SwipeScreen createState() => _SwipeScreen();
}
class MoppingScreen extends StatefulWidget {
  @override
  _MoppingScreen createState() => _MoppingScreen();
}
class VacuumScreen extends StatefulWidget {
  @override
  _VacuumScreen createState() => _VacuumScreen();
}
class OrganiseScreen extends StatefulWidget {
  @override
  _OrganiseScreen createState() => _OrganiseScreen();
}
class SanitiseScreen extends StatefulWidget {
  @override
  _SanitiseScreen createState() => _SanitiseScreen();
}
class FullsetScreen extends StatefulWidget {
  @override
  _FullsetScreen createState() => _FullsetScreen();
}



class _SwipeScreen extends State<SwipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("SWIPPING SERVICE"),
          backgroundColor:Colors.blue,
          automaticallyImplyLeading: false,
        ),
        body:Column(
            children:<Widget>[
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border:Border.all(color:Colors.lightBlue)),
                child:const Text("This is the swipping service. We provide the best swipping service!",style:TextStyle(fontSize:25,color:Colors.black,fontWeight:
                FontWeight.bold)),
              ),
              const SizedBox (height:10),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {},
                            child:const
                            Text('BOOK',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center)),
                      ]
                  )
              ),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {
                          color:Colors.purpleAccent;
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context)=>HomePage()));},
                            child:const
                            Text(' Back ',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center))
                      ]
                  )
              )
            ]
        )
    );
  }
}

class _MoppingScreen extends State<MoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("MOPPING SERVICE"),
          backgroundColor:Colors.blue,
          automaticallyImplyLeading: false,
        ),
        body:Column(
            children:<Widget>[
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border:Border.all(color:Colors.lightBlue)),
                child:const Text("This is mopping service page. We provide the best mopping service of all time",style:TextStyle(fontSize:25,color:Colors.black,fontWeight:
                FontWeight.bold)),
              ),
              const SizedBox (height:10),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {},
                            child:const
                            Text('BOOK',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center)),
                      ]
                  )
              ),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {
                          color:Colors.purpleAccent;
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context)=>HomePage()));},
                            child:const
                            Text(' Back ',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center))
                      ]
                  )
              )
            ]
        )
    );
  }
}

class _VacuumScreen extends State<VacuumScreen> {
  late final ButtonStyle raisedButtonStyle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("VACUUM SERVICE"),
          backgroundColor:Colors.blue,
          automaticallyImplyLeading: false, //get rid of back arrow
        ),
        body:Column(
            children:<Widget>[
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border:Border.all(color:Colors.lightBlue)),
                child:const Text("This is vacuum service page. We provide the best vacuum service of all time",style:TextStyle(fontSize:25,color:Colors.white,fontWeight:
                FontWeight.bold)),
              ),
              const SizedBox (height:10),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {},
                            child:const
                            Text('BOOK',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center)),
                      ]
                  )
              ),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {
                          color:Colors.purpleAccent;
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context)=>HomePage()));},
                            child:const
                            Text(' Back ',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center))
                      ]
                  )
              )
            ]
        )
    );
  }
}

class _OrganiseScreen extends State<OrganiseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("ORGANISING SERVICE"),
          backgroundColor:Colors.blue,
          automaticallyImplyLeading: false,
        ),
        body:Column(
            children:<Widget>[
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border:Border.all(color:Colors.lightBlue)),
                child:const Text("This is organising service page. We provide the best organising service of all time",style:TextStyle(fontSize:25,color:Colors.black,fontWeight:
                FontWeight.bold)),
              ),
              const SizedBox (height:10),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {},
                            child:const
                            Text('BOOK',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center)),
                      ]
                  )
              ),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {
                          color:Colors.purpleAccent;
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context)=>HomePage()));},
                            child:const
                            Text(' Back ',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center))
                      ]
                  )
              )
            ]
        )
    );
  }
}

class _SanitiseScreen extends State<SanitiseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("SANITISATION SERVICE"),
          backgroundColor:Colors.blue,
          automaticallyImplyLeading: false,
        ),
        body:Column(
            children:<Widget>[
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border:Border.all(color:Colors.lightBlue)),
                child:const Text("This is sanitisation service page. We provide the best sanitisation service of all time",style:TextStyle(fontSize:25,color:Colors.black,fontWeight:
                FontWeight.bold)),
              ),
              const SizedBox (height:10),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {},
                            child:const
                            Text('BOOK',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center)),
                      ]
                  )
              ),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {
                          color:Colors.purpleAccent;
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context)=>HomePage()));},
                            child:const
                            Text(' Back ',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center))
                      ]
                  )
              )
            ]
        )
    );
  }
}

class _FullsetScreen extends State<FullsetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("FULL SERVICE"),
          backgroundColor:Colors.blue,
          automaticallyImplyLeading: false,
        ),
        body:Column(
            children:<Widget>[
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border:Border.all(color:Colors.lightBlue)),
                child:const Text("This is full service page. We provide (swipping service + mopping service + vacuum service + organising service + sanitisation servide) at the cheapest possible price!",style:TextStyle(fontSize:25,color:Colors.black,fontWeight:
                FontWeight.bold)),
              ),
              const SizedBox (height:10),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {},
                            child:const
                            Text('BOOK',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center)),
                      ]
                  )
              ),
              Container(
                  width: 100.0,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.0),
                  child:Row(
                      children:<Widget>[
                        OutlinedButton(onPressed: () {
                          color:Colors.purpleAccent;
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context)=>HomePage()));},
                            child:const
                            Text(' Back ',style:TextStyle(fontSize:20,color:Colors.black),textAlign:TextAlign.center))
                      ]
                  )
              )
            ]
        )
    );
  }
}