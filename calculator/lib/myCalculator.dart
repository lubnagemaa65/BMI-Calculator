import 'dart:math';

import 'package:calculator/bmi_Result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale=true;
  double height=120.0;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff1e434b),
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  
                  children: [

                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                                          
                          child: Column(
                                    

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Image(image: AssetImage('assets/images/male.png'),
                            height: 90.0,
                          width: 90.0,
                            ),
                              SizedBox(height: 15.0,),
                              Text('MALE',style: TextStyle(fontSize: 25.0,
                              fontWeight: FontWeight.bold,),)
                            ],
                          ),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                          color: isMale?Color(0xfff9a26c):Color(0xfff26627)),

                        ),
                      ),
                    )
                  , 
                  SizedBox(width: 20.0,), 
                    Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                                      
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image(image: AssetImage('assets/images/female.png'),
                          height: 90.0,
                          width: 90.0,),
                    
                            SizedBox(height: 15.0,),
                            Text('FEMALE',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                          color: !isMale?Color(0xfff9a26c):Color(0xfff26627)),
                      ),
                    ),
                  )
                 
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xfff26627)),
                  
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                                Text('HEIGHT',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                                Row(
                                   mainAxisAlignment: MainAxisAlignment.center,

                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                        children: [
                                Text('${height.round()}',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900),),
                               SizedBox(height: 5.0,),
                               Text('cm',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
                        ],
                      ),
                     Slider(value: height,
                     max: 220.0,
                     min: 80.0,
                     activeColor: Color(0xff1e434b),
                      onChanged: (value){
                        setState(() {
                          height=value;
                        });
                      
                      })
                    ],
              ),
                  ),
                )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                       color:Color(0xfff26627)),
                    
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                          Text('Weight',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900),),
                    
                          Text('$weight',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                             mini: true,
                            child: Icon(Icons.remove),
                            backgroundColor: Color(0xff1e434b),
                        
                            ),
                            SizedBox(width: 10.0,),

                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                             mini: true,
                            child: Icon(Icons.add),
                         backgroundColor: Color(0xff1e434b),

                        
                            ),
                           ],
                        ),
                                 
                          ]
                         
                          
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Color(0xfff26627)),
                     
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                          Text('AGE',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900),),
                     
                          Text('$age',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                             mini: true,
                            child: Icon(Icons.remove),
                            backgroundColor: Color(0xff1e434b),

                         
                            ),
                            SizedBox(width: 10.0,),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                             mini: true,
                            child: Icon(Icons.add),
                            backgroundColor: Color(0xff1e434b),

                         
                            ),
                           ],
                                       ),
                     
                          ]
                         
                                       ),
                       ),
                     ),
                  ],
                ),
              ),
            ),

             Container(
              width: double.infinity,
              color: Color(0xfff26627),
              height: 65,
              child: MaterialButton(
                onPressed: () {
             double result= weight/pow(height/100,2);
             print(result.round());
             Navigator.push(context, MaterialPageRoute(builder: (context)=>
               BMIResult(
                result:result.round(),
                isMale:isMale,
                 age:age,
                 
               

               ),
             ),);
                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                     fontFamily: 'Pacifico',
                     fontWeight: FontWeight.bold,
                    color: Colors.black,
                  fontSize: 22.0,
                 ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// 
// print(result.round);