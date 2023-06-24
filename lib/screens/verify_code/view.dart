import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/design/widget/btn.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  bool isTimerRunning=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(

          padding: EdgeInsets.all(16),
          children: [
            Image.asset("assets/images/logo.png",height: 125,width: 123,)
            ,SizedBox(height: 24,),
            Text("نسيت كلمة المرور",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
            SizedBox(height: 5,),
            Text("أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
            SizedBox(height: 5,),

            Row(
              children: [
                Text("+9660548745 ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){

                },
                  child: Text("تغيير رقم الجوال",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Theme.of(context).primaryColor,
                        decoration:TextDecoration.underline),),
                ),
              ],
            ),
            SizedBox(height: 34,),
            PinCodeTextField(
            appContext: context,
            length: 4,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              selectedColor: Theme.of(context).primaryColor,
              inactiveColor: Theme.of(context).unselectedWidgetColor,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(15),
              fieldHeight: 60,
              fieldWidth: 70,
              activeFillColor: Colors.white,
            ),
            cursorColor: Theme.of(context).primaryColor,
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: false,
            keyboardType: TextInputType.number,
            onChanged: (value) {},
            onCompleted: (value){},
          ),
            Btn(onPress: (){},text:"تأكيد الكود" ,),
            SizedBox(height: 30,),
            Center(
              child: Text("لم تستلم الكود؟ \n مكنك إعادة إرسال الكود بعد",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20,),
            if(isTimerRunning)
            CircularCountDownTimer(
          duration: 6,
          initialDuration: 0,
          width:66,
          height: 70,
          ringColor: Theme.of(context).unselectedWidgetColor,
          ringGradient: null,
          fillColor:Colors.green,
          backgroundColor: Colors.transparent,
          strokeWidth: 2.0,
          onComplete: (){
            isTimerRunning=false;
            setState(() {

            });
          },
          strokeCap: StrokeCap.round,
          textStyle:TextStyle(
            fontSize: 21.0,
            color:Theme.of(context).primaryColor,
            fontWeight: FontWeight.normal,
          ),

          // Format for the Countdown Text.
          textFormat: CountdownTextFormat.MM_SS,
          isReverse: true,
          //isTimerTextShown: true,
          autoStart: true,
            ),

            SizedBox(height: 20,),
            Center(child: Btn(onPress: (){
              isTimerRunning=true;
              setState(() {
              });
            },text: "إعادة الإرسال",btnType:isTimerRunning? BtnType.outLineDisabled:BtnType.outLine,)),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("لديك حساب بالفعل ؟ ",style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor),),
                TextButton(onPressed: (){}, child: Text("تسجيل الأن",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),)),

              ],
            ),

          ],
        ),
      ),

    );
  }
}