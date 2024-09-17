import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/features/const/image_const.dart';
import 'package:weather_app/features/const/image_path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _clicked=false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        padding: EdgeInsets.only(top: 40,right: 20,left: 20,bottom: 20),
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(background[0]),fit: BoxFit.cover)),
        child: Stack(
          children: [
            _clicked==true?Positioned(
              top: 55,
              left: 20,
              right: 20,
              child: Container(
                height: 50,

                child: TextFormField(
                  decoration: InputDecoration(
                 enabledBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.white)
                 ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    )
                  ),
                ),
              ),
            ):SizedBox.shrink(),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined,color: Colors.red,size: 30,),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dubai",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),),
                            Text("Good morning",style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),),
                          ],
                        ),

                      ],
                    ),
                  ),
                  IconButton(onPressed: () {
              setState(() {
                _clicked=!_clicked;
              });
                  }, icon: Icon(Icons.search,color: Colors.white,))
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, -0.7),
                child: Image.asset(imagePath[0])),
            Align(
              alignment: Alignment(0, 0),
              child: Container(
                height: 130,
                width: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("21 C",style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight:FontWeight.w700
                    ),),
                    Text("Snow",style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),),

                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.75),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.3)
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset(imagePath[7],height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Temp Max",style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text("21 C",style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 20,),
                        Row(
                          children: [
                            Image.asset(imagePath[8],height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Temp Min",style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text("16 C",style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/sun.png',height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sunrice",style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text("21 C",style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 20,),
                        Row(
                          children: [
                            Image.asset("assets/images/moon.png",height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sunset",style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text("16 C",style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
