import 'package:flutter/material.dart';
import 'package:untitled2/core/design/res/colors.dart';
import 'package:untitled2/core/design/widget/input.dart';

import '../../core/design/widget/btn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body: SafeArea(
          child: ListView(

            padding: EdgeInsets.all(16),
            children: [
              Image.asset("assets/images/logo.png",height: 125,width: 123,)
              ,SizedBox(height: 24,),
              Text("مرحبا بك مرة أخرى",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
              SizedBox(height: 5,),
              Text("يمكنك تسجيل الدخول الأن",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
              SizedBox(height: 34,),
              Input(
                labelText: "رقم الجوال",
                inputType: InputType.phone,
                iconPath:"assets/icons/phone.png",
              ),SizedBox(height: 16,),
              Input(
                labelText: "كلمه المرور",
                inputType: InputType.password,
                inputAction: TextInputAction.done,
                iconPath: "assets/icons/lock.png",
              ),
          Padding(padding: EdgeInsets.only(top: 6,bottom: 16),
                 child: GestureDetector(
                   onTap: (){

                   },
                   child: Align(alignment: AlignmentDirectional.topEnd,
                        child: Text("نسيت كلمة المرور ؟",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w200,color: Theme.of(context).primaryColor),),
                      ),
                     ),
               ),
              Btn(onPress: (){},text:"تسجيل الدخول",),
              SizedBox(height: 48,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("ليس لديك حساب ؟ ",style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor),),
                  TextButton(onPressed: (){}, child: Text("تسجيل الأن",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),)),
                ],
              )


            ],
          ),
        ),

    );
  }
}
