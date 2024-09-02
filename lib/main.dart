import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_ui/secondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentButton = 0;
  List<String> buttonList01 = [
    "https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
  ];
  List<String> buttonList02 = [
    "https://thumbs.dreamstime.com/b/scenic-view-moraine-lake-mountain-range-sunset-landscape-canadian-rocky-mountains-49666349.jpg",
    "https://thumbs.dreamstime.com/b/scenic-view-moraine-lake-mountain-range-sunset-landscape-canadian-rocky-mountains-49666349.jpg",
  ];
  List<String> buttonList03 = [
    "https://images.unsplash.com/photo-1589802829985-817e51171b92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1589802829985-817e51171b92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80",
  ];
  List<String> mainList = [];

  @override
  void initState() {
    // TODO: implement initState
    mainList = buttonList01;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                color: Color(0xff0F2940),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.menu , color: Colors.white,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.search , color: Colors.white,))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0,top: 30,bottom: 30),
                child: Text("Explore\nThe World",style: TextStyle(
                    fontSize: 38,
                    color: Colors.white),
                ),
              ),

              Expanded(
                child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                    itemCount: mainList.length + 1,
                    itemBuilder: (context , index){

                    if(index == 0){
                      return  RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.0,left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    currentButton = 2;
                                    mainList = buttonList03;
                                  });
                                 },
                                child: Text("Flutter",
                                style: TextStyle(
                                  color: currentButton == 2? Colors.red:Colors.black,
                                  fontSize: 18,
                                ),
                                ),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    currentButton = 1;
                                    mainList =buttonList02;
                                  });
                                },
                                child: Text("Flutter",style: TextStyle(
                                    color: currentButton == 1? Colors.red:Colors.black,
                                    fontSize: 18
                                ),),
                              ),SizedBox(
                                width: 100,
                              ),
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    currentButton = 0;
                                    mainList = buttonList01;
                                  });
                                },
                                child: Text("Flutter",
                                  style: TextStyle(
                                      color: currentButton == 0? Colors.red:Colors.white,
                                      fontSize: 18
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      );
                    }else{
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(20),
                              width: 280,
                              //color: Colors.red,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15.0),

                               ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.network(mainList[index -1], fit: BoxFit.cover,)),
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondScreen()));
                      },
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text("Mountaine" , style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                              ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,bottom: 25.0),
                            child: const Row(
                              children: [
                                Icon(Icons.location_on,color: Colors.amberAccent,),
                                Text("Mountaine" , style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    }
                }),
              )
            ],
          )
        ],

      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
