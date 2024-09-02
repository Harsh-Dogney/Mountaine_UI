import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Column(
            //background
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                color: Color(0xff0F2940),
              )
            ],
          ),
          SingleChildScrollView(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),

                      IconButton(onPressed: (){

                      },
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          size: 30,)
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0,top: 30,bottom: 30),
                  child: Text("Mountain\nPackages",style: TextStyle(
                      fontSize: 38,
                      color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(

                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 220,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network("https://media-cdn.tripadvisor.com/media/photo-s/14/bb/b1/f7/caption.jpg",fit: BoxFit.cover,),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                                          color: Colors.orange,
                                        ),
                                        child: Icon(Icons.calendar_today,color: Colors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text("Tracking",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 30.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.amber),
                                      Text("Tours + Hotels",
                                        style: TextStyle(
                                            fontSize: 16 ,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Stack(
                                  children: [
                                    Container(
                                      height: 220,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network("https://imgs.search.brave.com/NK7Ctzj7Ikpb0jbLJ467xyrohtP_0F6fvCQm2vfNP1s/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvYmVhdXRpZnVs/LW1vdW50YWluLXBp/Y3R1cmVzLXdmdmQ0/eDQyaHRlc3JueXAu/anBn",fit: BoxFit.cover,),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                                          color: Colors.orange,
                                        ),
                                            child: Icon(Icons.calendar_today,color: Colors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text("Tracking",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 30.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.amber),
                                      Text("Tours + Hotels",
                                        style: TextStyle(
                                            fontSize: 16 ,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                 Stack(
                                  children: [
                                    Container(
                                      height: 220,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network("https://imgs.search.brave.com/cpiB4zpkZgCIDTWmpVlXC7UJnEmIbc-Cu5DXV743meE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5hcmNoaXRlY3R1/cmFsZGlnZXN0LmNv/bS9waG90b3MvNTc3/MmY5ZmMzODFjMmI4/ZDE1NmEwZGNjL21h/c3Rlci93XzMyMCxj/X2xpbWl0L2Flcmlh/bC1waG90b2dyYXBo/cy1tb3VudGFpbnMt/MDguanBn",fit: BoxFit.cover,),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                                          color: Colors.orange,
                                        ),
                                        child: Icon(Icons.calendar_today,color: Colors.white,),
                                      ),
                                    ),
                                  ],

                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text("Tracking",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 30.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.amber),
                                      Text("Tours + Hotels",
                                        style: TextStyle(
                                            fontSize: 16 ,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 20.0),
                                    child: Column(
                                      children: [
                                        Text("Sort by",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text("Price",style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.yellow,
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ],
                              ),

                            Container(
                              height: 220,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network("https://i.pinimg.com/originals/d3/45/11/d3451114ab4e1d55ead624930bcff60c.jpg",fit: BoxFit.cover,),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text("Tracking",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 30.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on,color: Colors.amber),
                                  Text("Tours + Hotels",
                                    style: TextStyle(
                                        fontSize: 16 ,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            Container(
                              height: 220,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network("https://imgs.search.brave.com/Cq-qqVaVn3rVJuw7sBeghik_wZ4L1e1Ga_YX1Hv-dNU/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvYmVh/dXRpZnVsLW1vdW50/YWluLXBpY3R1cmVz/LTI5OTIteC0yMDAw/LWZoaG8yODZ2emtz/NHo3eDAuanBn",fit: BoxFit.cover,),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text("Tracking",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 30.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on,color: Colors.amber),
                                  Text("Tours + Hotels",
                                    style: TextStyle(
                                        fontSize: 16 ,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            Container(
                              height: 220,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network("https://imgs.search.brave.com/LS8cneH_v3ZPZTNgHoZGiIn9UHLqO_ANEWG8AGM6LoY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvYmVh/dXRpZnVsLW1vdW50/YWluLXBpY3R1cmVz/LTE5MDAteC0xMjY3/LWllang3ejZrdnA2/cnYwdG4uanBn",fit: BoxFit.cover,),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text("Tracking",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 30.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on,color: Colors.amber),
                                  Text("Tours + Hotels",
                                    style: TextStyle(
                                        fontSize: 16 ,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),



          )
        ],
      ),
    );
  }
  }