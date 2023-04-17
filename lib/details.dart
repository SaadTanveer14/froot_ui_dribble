import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isExpanded = false;

  ScrollController _scrollController = ScrollController();



  bool _isScrollingDown = false;
 bool _ScrolledData = false;
   List<Color> colorsPrimary = [Color(0xFFFFE3E2), Color(0xFFFFE5CA)];
  List<Color> colorsSecondary = [Color(0xFFFE6A6A), Color(0xFFFB8B40)];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE3E2),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [

             Padding(
                padding: EdgeInsets.fromLTRB(25.w, 50.h, 25.w, 0.h),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios, color: colorsSecondary[0], size: 33.sp,),

                    Spacer(),

                    Text("Product Details",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromARGB(255, 30, 29, 29)
                      ),
                    ),
                    
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
                      padding: const EdgeInsets.only(top:25.0, bottom: 25).h,
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

              Padding(
                padding: EdgeInsets.only(left: 30,top:30.0, right: 30).h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80.h,
                          width: 80.h,
                          child:Image.asset("assets/pom1.png")
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("VIETNAM", style:GoogleFonts.poppins(
                              color: colorsSecondary[0],
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              letterSpacing: 2
                            )),
                            Text("Pomegranate",
                              style:GoogleFonts.poppins(
                              // color: Colo,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            
                              )
                            ),
                          ],
                        ),

                        Spacer(),
              
              
              
              
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Container(
                              
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xfffcc5c5),
                                  width: 2.0,
                                  
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(25.r))
                              ),
                                      
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                    Icons.thumb_up_alt_outlined,
                                    size: 28.sp,
                                    color: colorsSecondary[0],
                                  ),
                              ),
                            ),
                        ),
              
                           Container(
                            
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: colorsSecondary[0],
                                width: 2.0,
                                
                              ),
                              color: colorsSecondary[0],
              
                              borderRadius: BorderRadius.all(Radius.circular(25.r))
                            ),
              
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: 
                                  Icon(
                                    Icons.arrow_forward_ios, 
                                    color: Colors.white, 
                                    size: 28.sp,),
                                  
                            ),
                          ),
              
                          // Spacer(),
              
                 
              
              
                        // Container(
                        //   child: Icon(Icons.thumb_up_sharp),
                        // ),
              
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       // changeView=false;
                        //     });
                        //   },
                        //   child: Container(
                            
                        //     decoration: BoxDecoration(
                        //       border: Border(),
                        //       color: Colors.white
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Text("Find Nearest Door"),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
              
              
                  ],
                ),
              ),

            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            maxChildSize: 0.75,
            builder: (BuildContext context, ScrollController scrollController) {
    
            return NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification) {
                if (notification is UserScrollNotification) {
                  if (notification.direction == ScrollDirection.forward) {
                    // Scrolling up
                    print("down");
                    setState(() {
                      _isExpanded = false;
                    });
                  } else if (notification.direction == ScrollDirection.reverse) {
                    // Scrolling down
                     print("up");
                    setState(() {
                      _isExpanded = true;
                    });
                  }
                }
                return true;
              },     
            
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
              child: Container(
               
               
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Stack(
                        children: [
                         
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(0, 156, 156, 156),
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30),
                                  ),
                                ),
                                height: 0.15.sh,
                                child: Center(
                                  
                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30),
                                  ),
                                ),

                                height: 680,
                                width: 1.sw,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(30.w,0.22.sh,30.w,0.02.sh),
                                  child: Container(


                                    decoration: BoxDecoration(
                                    color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),

                                      border: Border.all(color: Color.fromARGB(255, 232, 232, 232), width: 2)
                                    ),
                                    
                                    // color: Colors.amber,
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0).h,
                                      child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                // Icon(
                                                  
                                                //   FeatherIcons.list, 
                                                //   color: colorsSecondary[0],

                                                //   ),


                                                Text(
                                                  String.fromCharCode(FeatherIcons.list.codePoint),
                                                  style: TextStyle(
                                                    inherit: false,
                                                    color: colorsSecondary[0],
                                                    fontSize: 30.0,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: FeatherIcons.list.fontFamily,
                                                    package: FeatherIcons.list.fontPackage,
                                                  ),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left:8.0),
                                                  child: Text("Nutrition Facts", style: GoogleFonts.poppins(fontSize: 26.sp, fontWeight: FontWeight.w700),),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left:8.0),
                                                  child: Icon(CupertinoIcons.question_circle, color: Colors.grey,),
                                                ),

                                            ],),
                                            
                                            Container(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:10,right: 10,bottom: 10, top: 20).w,
                                                    child: Row(
                                                      children: [
                                                        
                                                        Text(
                                                          "Carbohydrate",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFF515151),
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 16.sp
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 20),
                                                          child: Text(
                                                            "19g",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFFA4A4A4),
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 16.sp
                                                          ),

                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                            "6%",
                                                              style: GoogleFonts.poppins(
                                                              color: Color(0xFFA4A4A4),
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 16.sp
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  LinearPercentIndicator(
                                                    // width: 100.0,
                                                    lineHeight: 5.0,
                                                    percent: 0.3,
                                                    progressColor: colorsSecondary[0],
                                                  ),
                                                ],
                                              ),
                                            ),


                                            Container(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:10,right: 10,bottom: 10, top: 20).w,
                                                    child: Row(
                                                      children: [
                                                        
                                                        Text(
                                                          "Water",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFF515151),
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 16.sp
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 20),
                                                          child: Text(
                                                            "75g",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFFA4A4A4),
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 16.sp
                                                          ),

                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                            "75%",
                                                              style: GoogleFonts.poppins(
                                                              color: Color(0xFFA4A4A4),
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 16.sp
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  LinearPercentIndicator(
                                                    // width: 100.0,
                                                    lineHeight: 5.0,
                                                    percent: 0.75,
                                                    progressColor: colorsSecondary[0],
                                                  ),
                                                ],
                                              ),
                                            ),


                                            Container(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:10,right: 10,bottom: 10, top: 20).w,
                                                    child: Row(
                                                      children: [
                                                        
                                                        Text(
                                                          "Potassium",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFF515151),
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 16.sp
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 20),
                                                          child: Text(
                                                            "29g",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFFA4A4A4),
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 16.sp
                                                          ),

                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                            "45%",
                                                              style: GoogleFonts.poppins(
                                                              color: Color(0xFFA4A4A4),
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 16.sp
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  LinearPercentIndicator(
                                                    // width: 100.0,
                                                    lineHeight: 5.0,
                                                    percent: 0.45,
                                                    progressColor: colorsSecondary[0],
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:10,right: 10,bottom: 10, top: 20).w,
                                                    child: Row(
                                                      children: [
                                                        
                                                        Text(
                                                          "Total Fat",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFF515151),
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 16.sp
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 20),
                                                          child: Text(
                                                            "5 g",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFFA4A4A4),
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 16.sp
                                                          ),

                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                            "45%",
                                                              style: GoogleFonts.poppins(
                                                              color: Color(0xFFA4A4A4),
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 16.sp
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  LinearPercentIndicator(
                                                    // width: 100.0,
                                                    lineHeight: 5.0,
                                                    percent: 0.1,
                                                    progressColor: colorsSecondary[0],
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:10,right: 10,bottom: 10, top: 20).w,
                                                    child: Row(
                                                      children: [
                                                        
                                                        Text(
                                                          "Vitamin C",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFF515151),
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 16.sp
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 20),
                                                          child: Text(
                                                            "2.5 mg",
                                                          style: GoogleFonts.poppins(
                                                            color: Color(0xFFA4A4A4),
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 16.sp
                                                          ),

                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                            "1.7%",
                                                              style: GoogleFonts.poppins(
                                                              color: Color(0xFFA4A4A4),
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 16.sp
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  LinearPercentIndicator(
                                                    // width: 100.0,
                                                    lineHeight: 5.0,
                                                    percent: 0.5,
                                                    progressColor: colorsSecondary[0],
                                                  ),
                                                ],
                                              ),
                                            ),


                                          ]
                                        ),
                                    ),
                                  ),
                                ),
                              ),


                            Container(
                                color: Color.fromARGB(255, 255, 255, 255),

                                height: 0.24.sh,
                                width: 1.sw,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(30.w,0,30.w,20.h),
                                  child: Container(


                                    decoration: BoxDecoration(
                                    color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),

                                      border: Border.all(color: Color.fromARGB(255, 232, 232, 232), width: 2)
                                    ),
                                    
                                    // color: Colors.amber,
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0).h,
                                      child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                   


                                                Text(
                                                  String.fromCharCode(FeatherIcons.info.codePoint),
                                                  style: TextStyle(
                                                    inherit: false,
                                                    color: colorsSecondary[0],
                                                    fontSize: 28.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: FeatherIcons.info.fontFamily,
                                                    package: FeatherIcons.info.fontPackage,
                                                  ),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left:8.0),
                                                  child: Text("Notice", style: GoogleFonts.poppins(fontSize: 24.sp, fontWeight: FontWeight.w700),),
                                                ),

                                            

                                            ],),
                                            
                                            Padding(
                                              padding: const EdgeInsets.only(top:10.0).h,
                                              child: Text("Per cent Daily Values are based on a 2,000 calorie diet. Your daily values may be higher or lowe depending on your calrie needs",
                                                style: GoogleFonts.poppins(
                                                  color: Color(0xFFA4A4A4),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.sp
                                                ),
                                              ),
                                            )
                                            


                                            

                                            

                                            


                                          ]
                                        ),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                color: Color.fromARGB(255, 255, 255, 255),

                                height: 0.45.sh,
                                width: 1.sw,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(30.w,0,30.w,0.1.sh),
                                  child: Container(


                                    decoration: BoxDecoration(
                                    color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),

                                      border: Border.all(color: Color.fromARGB(255, 232, 232, 232), width: 2)
                                    ),
                                    
                                    // color: Colors.amber,
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0).h,
                                      child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                   


                                                Text(
                                                  String.fromCharCode(FeatherIcons.image.codePoint),
                                                  style: TextStyle(
                                                    inherit: false,
                                                    color: colorsSecondary[0],
                                                    fontSize: 28.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: FeatherIcons.image.fontFamily,
                                                    package: FeatherIcons.image.fontPackage,
                                                  ),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left:8.0),
                                                  child: Text("Photos", style: GoogleFonts.poppins(fontSize: 24.sp, fontWeight: FontWeight.w700),),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left:8.0),
                                                  child: Text("(37)", style: GoogleFonts.poppins(fontSize: 22.sp, fontWeight: FontWeight.w500,color: Color(0xFFA4A4A4),),),
                                                ),



                                                

                                            

                                            ],),

                                            Padding(
                                              padding: EdgeInsets.only(top:20.0).h,
                                              child: Container(
                                                height:0.2.sh,
                                                child: ListView(
                                                  scrollDirection: Axis.horizontal,
                                                  children:[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Colors.black12
                                                        ),
                                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                                      ),
                                                      height: 0.2.sh,
                                                      width:0.2.sh,
                                                      child: Image.asset("assets/pom3.png"),
                                                    ),
                                            
                                                    SizedBox(width:30.w),
                                            
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Colors.black12
                                                        ),
                                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                                      ),
                                                      height: 0.2.sh,
                                                      width:0.2.sh,
                                                      child: Image.asset("assets/pom2.png", fit: BoxFit.cover,),
                                                    ),
                                                    
                                            
                                                  ]
                                              
                                              
                                                ),
                                              ),
                                            )

                                          ]
                                        ),
                                    ),
                                  ),
                                ),
                              ),
                    

                            ],
                          ),
                           Positioned
                          (
                            left: 0,
                            right: 0,
                            top: -0.05.sh,
                            child: Center(
                              child: Container(
                                  height: 0.5.sh,
                                  width: 0.5.sh,
                                  child: Image.asset('assets/pom1.png')
                                ),
                            )
                          ),
                        ],
                      ),
                ),
              ),
            ),
              );
            },
          ),
        ],
      ),
    );
  }

}