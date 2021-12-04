import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timecounter/pages/main_page.dart';
String DayText = 'день';
String DayText1 = 'дня';
String DayText2 = 'дней';
String HourText = 'час';
String HourText1 = 'часа';
String HourText2 = 'часов';
String MinsText = 'минута';
String MinsText1 = 'минуты';
String MinsText2 = 'минут';
String SecsText = 'секунда';
String SecsText1 = 'секунды';
String SecsText2 = 'секунд';

String result_text_day = '';
String result_text_hour = '';
String result_text_mins = '';
String result_text_secs = '';


class resultScreen extends StatelessWidget {
  const resultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TimeCounter'),
          backgroundColor: Colors.deepPurple,
        centerTitle: true ,
        ),

        body: Column(
          children: [
            Center(
              child: Column (
                children: [
                  SizedBox(height: 50,),
                  Text('Результат:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 10,),
                  Text('$day_result $result_text_day $hour_result $result_text_hour $mins_result $result_text_mins $secs_result $result_text_secs',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                  SizedBox(height: 70,),
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.asset('assets/images/clock.png', fit:BoxFit.fill),
                  ),
                ],
              )

            ),

          ],
        )
    );
  }
}
