import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/*
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  List<Color> colorsPrimary = [Color(0xFFFFE3E2), Color(0xFFFFE5CA)];
  List<Color> colorsSecondary = [Color(0xFFFE6A6A), Color(0xFFFB8B40)];

  bool changeView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE3E2),
      body: Column(
        children:[
          Padding(
            padding: EdgeInsets.fromLTRB(25.w, 50.h, 25.w, 0.h),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, color: colorsSecondary[0], size: 33.sp,),

                Spacer(),

                Text("Product Details"),
                
                Spacer(),

                Icon(FeatherIcons.share2, color: colorsSecondary[0], size: 33.sp)
              ],
            ),
          ),
          

          changeView==false ?
          Padding(
            padding: const EdgeInsets.fromLTRB(25,40,25,40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text("VIETNAM", style:GoogleFonts.poppins(
                  letterSpacing: 2,
                  color: Color(0xffe65150),
                  fontWeight: FontWeight.w600
                )),
                Text("Pomegranate",
                  style: GoogleFonts.poppins(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold

                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Text("Pomegranate's therapeutic properties are wide including diverse treatments and prevention of cancer, cardiovascular diseases.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
          
                Row(
                  children: [
                    
                    Container(
                      
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xfffcc5c5),
                          width: 2.0,
                          
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(35.r))
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(
                            Icons.thumb_up_alt_outlined,
                            size: 32.sp,
                            color: colorsSecondary[0],
                          ),
                      ),
                    ),

                    Spacer(),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          changeView=true;
                        });
                      },
                      child: Container(
                        
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.r))
,
                          color: colorsSecondary[0]
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40.0.w,22.0.w,40.0.w,22.0.w),
                          child: Text(
                            "FIND NEAREST STORE",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2

                            )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )

          :

          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text("Vietnam", style:GoogleFonts.poppins(
                        color: colorsSecondary[0]
                      )),
                      Text("Pomegranate",
                        style: GoogleFonts.poppins(
                          fontSize: 30.sp
                        ),
                      ),
                    ],
                  ),


                  Container(
                    child: Icon(Icons.thumb_up_sharp),
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        changeView=false;
                      });
                    },
                    child: Container(
                      
                      decoration: BoxDecoration(
                        border: Border(),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Find Nearest Door"),
                      ),
                    ),
                  ),
                ],
              ),


            ],
          )





        ]

      ),

    );
  }
}

*/


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  
  late AnimationController _controller;
  bool _isExpanded = false;
  List<Color> colorsPrimary = [Color(0xFFFFE3E2), Color(0xFFFFE5CA)];
  List<Color> colorsSecondary = [Color(0xFFFE6A6A), Color(0xFFFB8B40)];

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _controller.value = 0.5; // start animation at 50% of screen height
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double initialSheetHeight = screenHeight * 0.5; // set initial sheet height to 50% of screen height
    double expandedSheetHeight = screenHeight * 0.7; // set expanded sheet height to 70% of screen height
    return Scaffold(
      
      backgroundColor: Color(0xFFFFE3E2),

      body: Column(
        children: [

         Padding(
            padding: EdgeInsets.fromLTRB(25.w, 50.h, 25.w, 0.h),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, color: colorsSecondary[0], size: 33.sp,),

                Spacer(),

                Text("Product Details"),
                
                Spacer(),

                Icon(FeatherIcons.share2, color: colorsSecondary[0], size: 33.sp)
              ],
            ),
          ),
        
        
        
        _isExpanded == false ?
          Padding(
            padding: const EdgeInsets.fromLTRB(25,40,25,40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text("VIETNAM", style:GoogleFonts.poppins(
                  letterSpacing: 2,
                  color: Color(0xffe65150),
                  fontWeight: FontWeight.w600
                )),
                Text("Pomegranate",
                  style: GoogleFonts.poppins(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold

                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Text("Pomegranate's therapeutic properties are wide including diverse treatments and prevention of cancer, cardiovascular diseases.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
          
                Row(
                  children: [
                    
                    Container(
                      
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xfffcc5c5),
                          width: 2.0,
                          
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(35.r))
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(
                            Icons.thumb_up_alt_outlined,
                            size: 32.sp,
                            color: colorsSecondary[0],
                          ),
                      ),
                    ),

                    Spacer(),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          // changeView=true;
                        });
                      },
                      child: Container(
                        
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.r))
,
                          color: colorsSecondary[0]
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40.0.w,22.0.w,40.0.w,22.0.w),
                          child: Text(
                            "FIND NEAREST STORE",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2

                            )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )

          :

          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text("Vietnam", style:GoogleFonts.poppins(
                        color: colorsSecondary[0]
                      )),
                      Text("Pomegranate",
                        style: GoogleFonts.poppins(
                          fontSize: 30.sp
                        ),
                      ),
                    ],
                  ),


                  Container(
                    child: Icon(Icons.thumb_up_sharp),
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        // changeView=false;
                      });
                    },
                    child: Container(
                      
                      decoration: BoxDecoration(
                        border: Border(),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Find Nearest Door"),
                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),


          // Your UI elements
          // Expanded(
          //   child: GestureDetector(
          //     onVerticalDragUpdate: (details) {
          //       print(_isExpanded);
          //       if (details.delta.dy > 0 && _isExpanded) {
          //         // swiping down
          //         setState(() {
          //           _isExpanded = false;
          //         });
          //         _controller.reverse();
          //       } else if (details.delta.dy < 0 && !_isExpanded) {
          //         // swiping up
          //         setState(() {
          //           _isExpanded = true;
          //         });
          //         _controller.forward();
          //       }
          //     },
          //     child: Stack(
          //       children: [
                
          //         Align(
          //           alignment: Alignment.bottomCenter,
          //           child: GestureDetector(
          //             onTap: () {
          //               if (_isExpanded) {
          //                 _controller.reverse();
          //                 setState(() {
          //                   _isExpanded = false;
          //                 });
          //               } else {
          //                 _controller.forward();
          //                 setState(() {
          //                   _isExpanded = true;
          //                 });
          //               }
          //             },
          //             child: Container(
          //               height: 50.0,
          //               width: double.infinity,
          //               color: Colors.grey,
          //               child: Center(
          //                 child: Icon(Icons.keyboard_arrow_up),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          
          GestureDetector(
              onVerticalDragUpdate: (details) {
                print(_isExpanded);
                if (details.delta.dy > 0 && _isExpanded) {
                  // swiping down
                  setState(() {
                    _isExpanded = false;
                  });
                  _controller.reverse();
                } else if (details.delta.dy < 0 && !_isExpanded) {
                  // swiping up
                  setState(() {
                    _isExpanded = true;
                  });
                  _controller.forward();
                }
              },
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Container(
                  height: initialSheetHeight +
                      (_controller.value * (expandedSheetHeight - initialSheetHeight)),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(0, 255, 255, 255),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.0),
                    ),
          
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Your UI elements
                        SizedBox(height: 10.0),
                        Text('Draggable Sheet Content'),
                        SizedBox(height: 10.0),
                        Container(
                          height: 100.0,
                          color: Colors.grey,
                          child: Center(child: Column(
                            children: [
                              Text('Sheet Content'),
                              
          
                            ],
                          )),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}