import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(25.0,40,25,40),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        width: 0.7.sw,
                        child: Text(
                          "Discover Fruits around the world",
                          style: GoogleFonts.poppins(
                            fontSize: 30.sp
                          ),
                        ),
                      ),

                      Spacer(),

                      Container(
                        width: 50.h,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(25.0,0,0,10),
                child: Row(
                  children: [
                    TextButton(onPressed: (){}, child: Text("Exotic")),

                    TextButton(onPressed: (){}, child: Text("Citrus")),

                    TextButton(onPressed: (){}, child: Text("Berries"))
                    
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Container(
                  height: 0.4.sh,
              
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE3E2),
                          borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        height: 0.4.sh,
                        width: 0.6.sw,
              
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
                    Text("Nearby Stores"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Container(
                  height: 0.1.sh,
              
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          height: 0.1.sh,
                          width: 0.6.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.grey)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                        
                                Container(
                                  width: 60.h,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Text("Chi Ba's Shop"),
                                    Text("45tj Tatum Locks"),
                                    Text("9 A.M -5 P.M")
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
          )
        ],
      ),
    );
  }
}