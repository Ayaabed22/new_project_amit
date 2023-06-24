import 'package:flutter/material.dart';

import '../../core/design/widget/btn.dart';
import '../../core/design/widget/input.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

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
            Text("أدخل رقم الجوال المرتبط بحسابك",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
            SizedBox(height: 34,),
            Input(
              labelText: "رقم الجوال",
              inputType: InputType.phone,
              iconPath:"assets/icons/phone.png",
            ),
            SizedBox(height: 16,),

            Btn(onPress: (){},text:"تأكيد رقم الجوال",),
            SizedBox(height: 48,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("لديك حساب بالفعل ؟",style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor),),
                TextButton(onPressed: (){}, child: Text("تسجيل الأن",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),)),
              ],
            )


          ],
        ),
      ),

    );
  }
}