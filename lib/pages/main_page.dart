// import 'package:js/js.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // подключаем базовый набор виджетов
import 'package:timecounter/pages/result.dart';

TextEditingController dayController = new TextEditingController();
TextEditingController day1Controller = new TextEditingController();
TextEditingController hoursController = new TextEditingController();
TextEditingController hours1Controller = new TextEditingController();
TextEditingController mintsController = new TextEditingController();
TextEditingController mints1Controller = new TextEditingController();
TextEditingController secsController = new TextEditingController();
TextEditingController secs1Controller = new TextEditingController();
var day, day1, day_result, d_counter;
var hours, hours1, hour_result;
var mins, mins1, mins_result, m_counter;
var secs, secs1, secs_result;


   class Home extends StatefulWidget {



   @override
   _HomeState createState() => _HomeState();
   }
   class _HomeState extends State<Home> {
     final formKey = GlobalKey<FormState>();
     String name = '';

     @override
     Widget build(BuildContext context) {
       SystemChrome.setEnabledSystemUIOverlays([]);
       return Scaffold(
           resizeToAvoidBottomInset: false,
           appBar: AppBar(title: Text('TimeCounter'),
             backgroundColor: Colors.deepPurple,
             centerTitle: true ,
           ),
           body: Container(
             child: Form(
               key: formKey,
               child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       width: 100,
                       height: 100,
                       child: TextFormField(
                         controller: dayController,
                         maxLength: 2,
                         style: TextStyle( fontSize: 14,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.bold),
                         decoration: InputDecoration(
                           labelText: "Дни",
                           counter: Offstage(),
                         ),
                         validator: (value){
                           if(value!.isEmpty){
                             return "Пусто!";
                           }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                             return "Недопустимо";
                           }else{
                             return null;
                           }
                         },
                         keyboardType: TextInputType.number,
                       ),
                     ),
                      Container(
                        width: 100,
                        height: 100,
                          child: TextFormField(
                            controller: hoursController,
                            maxLength: 2,
                            style: TextStyle( fontSize: 14,fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              labelText: "Часы",
                              counter: Offstage(),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "Пусто!";
                              }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                                return "Недопустимо";
                              }else{
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                          ),
               ),
                     Container(
                       width: 100,
                       height: 100,
                       child:  TextFormField(
                         controller: mintsController,
                         maxLength: 2,
                         style: TextStyle( fontSize: 14,fontFamily: 'Poppins',
                             fontWeight: FontWeight.bold),
                         decoration: InputDecoration(
                           labelText: "Минуты",
                           counter: Offstage(),
                         ),
                         validator: (value){
                           if(value!.isEmpty){
                             return "Пусто!";
                           }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                             return "Недопустимо";
                           }else{
                             return null;
                           }
                         },
                         keyboardType: TextInputType.number,
                       ),
                     ),
                     Container(
                         width: 100,
                         height: 100,
                         child:  TextFormField(
                           controller: secsController,
                           maxLength: 2,
                           style: TextStyle( fontSize: 14,fontFamily: 'Poppins',
                               fontWeight: FontWeight.bold),
                           decoration: InputDecoration(
                             labelText: "Секунды",
                             counter: Offstage(),
                           ),
                           validator: (value){
                             if(value!.isEmpty){
                               return "Пусто";
                             }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                               return "Недопустимо";
                             }else{
                               return null;
                             }
                           },
                           keyboardType: TextInputType.number,
                         ),
                     ),
                   ],
                 ),



                  Text('Прибавить:',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
               ), ),
                 SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: TextFormField(
                          controller: day1Controller,
                          maxLength: 2,
                          style: TextStyle( fontSize: 14,fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            labelText: "Дни",
                            counter: Offstage(),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Пусто!";
                            }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                              return "Недопустимо";
                            }else{
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          child:TextFormField(
                            controller: hours1Controller,
                            maxLength: 2,
                            style: TextStyle( fontSize: 14,fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              labelText: "Часы",
                              counter: Offstage(),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "Пусто!";
                              }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                                return "Недопустимо";
                              }else{
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                          ),
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          child:TextFormField(
                            controller: mints1Controller,
                            maxLength: 2,
                            style: TextStyle( fontSize: 14,fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              labelText: "Минуты",
                              counter: Offstage(),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "Пусто!";
                              }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                                return "Недопустимо";
                              }else{
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                          ),
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          child:TextFormField(
                            controller: secs1Controller,
                            maxLength: 2,
                            style: TextStyle( fontSize: 14,fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              labelText: "Секунды",
                              counter: Offstage(),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "Пусто!";
                              }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                                return "Недопустимо";
                              }else{
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                          ),
                      ),
                    ],
                  ),

                 SizedBox(height: 10,),
             ElevatedButton.icon(onPressed: (){
               if(formKey.currentState!.validate()){
                  counting();
                  text();
                 Navigator.pushNamed(context, '/result');
               }
             },
               icon: Icon(Icons.create), label: Text('Рассчитать!', style: TextStyle(
                 fontFamily: 'Poppins',
                 fontWeight: FontWeight.bold,
               ),),
               style: ElevatedButton.styleFrom(
                   fixedSize: const Size(240, 50), primary: Colors.deepPurple),

               ),
                 SizedBox(height: 25,),
                 Container(
                   width: 250,
                   height: 250,
                   child: Image.asset('assets/images/clock.png', fit:BoxFit.fill),
                 ),
             ],
           )
       ),
       )
       );
     }
 void counting (){
   int day = int.parse(dayController.text);
   int day1 = int.parse(day1Controller.text);
   int hours = int.parse(hoursController.text);
   int hours1 = int.parse(hours1Controller.text);
   int mins = int.parse(mintsController.text);
   int mins1 = int.parse(mints1Controller.text);
   int secs = int.parse(secsController.text);
   int secs1 = int.parse(secs1Controller.text);
   d_counter = 0;
   m_counter = 0;
   mins_result = 0;
   hour_result = 0;
   secs_result = secs + secs1;
   if (secs_result > 60){
     do {
       secs_result = secs_result - 60;
       m_counter++;
     }while(secs_result > 60);
     mins_result = mins_result + m_counter;
   }

   print(mins_result);

   mins_result = mins_result + mins + mins1;
   print(mins_result);
   if (mins_result > 60) {
     do {
       mins_result = mins_result - 60;
       hour_result++;
     }while(mins_result > 60);
   }

   hour_result = hour_result + hours + hours1;
   print(hour_result);
   if (hour_result > 24) {
     do {
       hour_result = hour_result - 24;
       d_counter++;
     }while(hour_result > 24);
   }
   day_result = d_counter + day + day1;


 }

 void text () {
   String valueDay = '';
   String valueHour = '';
   String valueMin = '';
   String valueSec = '';
   String lastDidgitDay ='';
   String lastDidgitHour ='';
   String lastDidgitMin ='';
   String lastDidgitSec ='';

   valueDay = day_result.toString();
   lastDidgitDay = valueDay.substring(valueDay.length - 1);
   if (day_result != 11 &&  lastDidgitDay == '1'){
     result_text_day = DayText;

   }else if (lastDidgitDay == '2' && day_result != 12 || lastDidgitDay == '3' && day_result != 13 || lastDidgitDay == '4' && day_result != 14 ){
     result_text_day = DayText1;
   }else{
     result_text_day = DayText2;
   }

   valueHour = hour_result.toString();
   lastDidgitHour = valueHour.substring(valueHour.length - 1);
   if (hour_result != 11 && lastDidgitHour == '1'){
     result_text_hour = HourText;

   }else if (lastDidgitHour == '2' && hour_result != 12 || lastDidgitHour == '3' && hour_result != 13 || lastDidgitHour == '4' && hour_result != 14){
     result_text_hour = HourText1;
   }else{
     result_text_hour = HourText2;
   }

   valueMin = mins_result.toString();
   lastDidgitMin = valueMin.substring(valueMin.length - 1);
   if (mins_result != 11 && lastDidgitMin == '1'){
     result_text_mins = MinsText;

   }else if (lastDidgitMin == '2' && mins_result != 12 || lastDidgitMin == '3' && mins_result != 13 || lastDidgitMin == '4' && mins_result != 14){
     result_text_mins = MinsText1;
   }else{
     result_text_mins = MinsText2;
   }

   valueSec = secs_result.toString();
   lastDidgitSec = valueSec.substring(valueSec.length - 1);
   if (secs_result != 11 && lastDidgitSec == '1'){
     result_text_secs = SecsText;

   }else if (lastDidgitSec == '2' && secs_result != 12 || lastDidgitSec == '3' && secs_result != 13 || lastDidgitSec == '4' && secs_result != 14){
     result_text_secs = SecsText1;
   }else{
     result_text_secs = SecsText2;
   }

 }



   }