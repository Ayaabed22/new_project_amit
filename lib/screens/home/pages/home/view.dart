import 'package:flutter/material.dart';
import 'package:untitled2/core/design/widget/btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            TextFormField(),
            SizedBox(height: 100,),
            Btn(text: "Login", btnType: BtnType.outLine,),
            SizedBox(height: 100,),
            Btn(text: "hello",btnType: BtnType.cancel,),
            SizedBox(height: 100,),
            Btn(text: "Register",)
          ],
        ),
      ),
    );
  }
}
