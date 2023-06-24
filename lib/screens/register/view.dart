import 'package:flutter/material.dart';

import '../../core/design/widget/btn.dart';
import '../../core/design/widget/input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
            Text("يمكنك تسجيل حساب جديد الأن",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
            SizedBox(height: 34,),
            Input(
              labelText: "اسم المستخدم",
              iconPath:"assets/icons/user.png",
            ),SizedBox(height: 16,),
            Input(
              labelText: "رقم الجوال",
              inputType: InputType.phone,
              iconPath:"assets/icons/phone.png",
            ),SizedBox(height: 16,),
            Input(
              labelText: "المدينة",
              iconPath:"assets/icons/city.png",
            ),SizedBox(height: 16,),
            Input(
              labelText: "كلمه المرور",
              inputType: InputType.password,
              inputAction: TextInputAction.done,
              iconPath: "assets/icons/lock.png",
            ),SizedBox(height: 16,),
            Input(
              labelText: "كلمه المرور",
              inputType: InputType.password,
              inputAction: TextInputAction.done,
              iconPath: "assets/icons/lock.png",
            ),SizedBox(height: 16,),
            Btn(onPress: (){},text:"تسجيل",),
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