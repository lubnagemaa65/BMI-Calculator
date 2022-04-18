import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  
  BMIResult({required this. result, required this.isMale, required this. age}
   
 
  ) ;

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Color(0xff325d79),
        appBar: AppBar(
          title: Text('BMI Result'),
          backgroundColor: Color(0xfff26627),
        ),
        body:  Center(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   ClipRRect(
                 borderRadius:  BorderRadius.circular(50),
                child: Image(image: AssetImage('assets/images/bg.png',),fit: BoxFit.cover,),
                   ),
                SizedBox(height: 15.0,),

                Text('Gender:${isMale?'Male':'Female'}',
                style: TextStyle(
                  fontSize: 25.0,
                  backgroundColor: Color(0xfff9a26c),
                  fontWeight: FontWeight.bold,
                ),
                )
,                              SizedBox(height: 15.0,),

Text('Age:$age', style: TextStyle(
  backgroundColor: Color(0xffefeeee),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,),),

                                  SizedBox(height: 15.0,),
          
Text('Result:$result', style: TextStyle(
                  fontSize: 25.0,
                  backgroundColor: Color(0xff98d7d1),
                  fontWeight: FontWeight.bold,),),
  ]
              ),
          ),
        );
  }
}
