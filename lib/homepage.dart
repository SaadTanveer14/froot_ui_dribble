import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:froot_ui/details.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<String> link = ["assets/pom1.png", "assets/pap2.png"];
  List<Color> colorsPrimary = [Color(0xFFFFE3E2), Color(0xFFFFE5CA)];
  List<Color> colorsSecondary = [Color(0xFFFE6A6A), Color(0xFFFB8B40)];
  List<String> country = ["VIETNAM", "THAILAND"];
  List<String> fruits = ["Pomegranate", "Yellow Papaya"];
  List<int> stores = [29 ,16];
  List<String> nearbyStore = ["assets/orange.jpg", "assets/pom5.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [

              Padding(
                padding: EdgeInsets.fromLTRB(25.0.w,60.h,25.w,40.h),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        width: 0.7.sw,
                        child: Text(
                          "Discover fruits around the world",
                          style: GoogleFonts.poppins(
                            fontSize:32.sp, 
                            fontWeight: FontWeight.bold, 
                            color:Color(0xFF0D0D0D),
                            height: 1.2
                            ),
                            
                        ),
                      ),

                      Spacer(),

                      Container(
                        width: 60.h,
                        height: 60.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                            color: Color.fromARGB(83, 0, 0, 0),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(2, 2)
                          )]
                         
                        ),
                        child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(20)),child: Image.asset("assets/man.jpg",fit:BoxFit.cover)),
                      )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(25.0.w,0,0,20.h),
                child: Row(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:2.0).w,
                      child: Text("Exotic", style: GoogleFonts.poppins(fontSize:20.sp, fontWeight: FontWeight.w600, color:Color(0xFF0D0D0D),),),
                    ),
                    Container(
                      width: 10.h,
                      height: 10.h,
                      decoration: BoxDecoration(

                        shape: BoxShape.circle,
                        color: Colors.pink
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:10.0).w,
                      child: Text("Citrus", style: GoogleFonts.poppins(fontSize:20.sp, fontWeight: FontWeight.w600, color:Color(0xFF0D0D0D),  )),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:10.0).w,
                      child: Text("Berries", style: GoogleFonts.poppins(fontSize:20.sp, fontWeight: FontWeight.w600, color:Color(0xFF0D0D0D),)),
                    )
                    
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left:25).w,
                child: Container(
                  height: 0.4.sh,
              
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          Get.to( ()=> MyHomePage());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorsPrimary[index],
                            borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                          height: 0.4.sh,
                          width: 0.6.sw,
                          child: Stack(
                            children: [
                              index==0?
                              Image.asset(link[index]):
                      
                              Padding(
                                padding: const EdgeInsets.only(top:30.0).h,
                                child: Image.asset(link[index]),
                              ),
                      
                      
                              Positioned(
                                bottom: 0,
                                child: Padding(
                                  padding: EdgeInsets.only(left:25.0.w, bottom: 25.h),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(country[index], style: GoogleFonts.poppins(color: colorsSecondary[index], fontWeight: FontWeight.bold, letterSpacing: 2),),
                                      Text(fruits[index], style: GoogleFonts.poppins(fontSize:26.sp, fontWeight: FontWeight.bold  ),),
                                      Text(stores[index].toString() + " available stores nearby",style: GoogleFonts.poppins(color: Color(0xFF9D8A8B), fontWeight: FontWeight.bold  ),),
                                                            
                                  ],),
                                ),
                              )
                              
                            ],
                          ),
                        ),
                      );
                    }, 
                    separatorBuilder: (context,index){
                      return SizedBox(width:20.w);
                    },
                
                    itemCount: 2),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left:25, top:20.h, bottom: 20.h),
                child: Row(
                  children: [
                    Text("Nearby Stores",style: GoogleFonts.poppins(fontSize: 20.sp, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Container(
                  height: 0.11.sh,
              
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          height: 0.1.sh,
                          width: 0.6.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Color.fromARGB(58, 186, 186, 186), width: 2)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                        
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    width: 60.h,
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFE3E2),
                                      // borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Image.asset(nearbyStore[index],fit: BoxFit.fitWidth ,),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Text("Chi Ba's Shop", style: GoogleFonts.poppins( fontWeight: FontWeight.bold, fontSize: 17.sp),),
                                    Text("45tj Tatum Locks", style: GoogleFonts.poppins(color: Color(0xFF9D8A8B), fontWeight: FontWeight.w600 ),),
                                    Text("9 A.M -5 P.M",style: GoogleFonts.poppins(color: Color(0xFFFE6A6A), fontWeight: FontWeight.bold  ),)
                                  ],),
                                )
                                        
                                        
                                        
                            ]),
                          ),
                        );
                      }, 
                      separatorBuilder: (context,index){
                        return SizedBox(
                          width: 20.w,
                        );
                      }, 
                      itemCount: 2
                    ),
                ),
              ),


            ],
          ),

          Positioned(
            bottom: 0,
            child: Container(
              height: 0.12.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                    color: Color.fromARGB(86, 0, 0, 0),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(45.r), topRight: Radius.circular(45.r)),
              ),
              child: Row(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(left:25.0),
                    child: Container(
                  
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE3E2),
                          borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0).w,
                          child: Icon(FeatherIcons.home,size: 30.w,color: Color(0xFFFE7E7D),),
                        )
                      ),
                  ),
                  
                  Spacer(),

                  Container(
                  
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0).w,
                        child: Icon(FeatherIcons.search,size: 30.w, color:Color(0xFFBABABA)),
                      )
                  ),

                  Spacer(),

                  Container(
                  
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0).w,
                        child: Icon(FeatherIcons.folder,size: 30.w, color:Color(0xFFBABABA)),
                      )
                  ),

                  Spacer(),

                  Padding(
                    padding: const EdgeInsets.only(right:25.0),
                    child: Container(
                    
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0).w,
                          child: Icon(FeatherIcons.user,size: 30.w,color:Color(0xFFBABABA)),
                        )
                    ),
                  ),
                
                  



                ]),
            ),
          )
        ],
      ),
    );
  }
}