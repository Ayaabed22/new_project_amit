import 'package:flutter/material.dart';

enum InputType{phone,password,email,normal}
class Input extends StatefulWidget {
  final String labelText;
  final String? iconPath;
  final InputType inputType;
  final TextInputAction inputAction;
  const Input({Key? key, this.labelText="", this.iconPath,this.inputType=InputType.normal,this.inputAction=TextInputAction.next}) :super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {

  bool isPasswordShown=false;
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      obscureText: widget.inputType==InputType.password && !isPasswordShown,
          textInputAction: widget.inputAction,
          maxLength: getLength(),
          buildCounter: (context, {currentLength=11, isFocused=false, maxLength}) =>  SizedBox(),
          decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                  borderSide:BorderSide(color: Theme.of(context).unselectedWidgetColor) ),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Theme.of(context).unselectedWidgetColor)),
              filled: true,
              fillColor: Colors.white,
              suffixIcon: widget.inputType== InputType.password
                  ? GestureDetector(onTap: (){
                isPasswordShown!=isPasswordShown;
                setState(() {

                });
              },child:Icon(isPasswordShown?Icons.visibility:Icons.visibility_off),):null,
              labelText: widget.labelText,
              prefixIcon:widget.iconPath!=null? Image.asset(widget.iconPath!,):null,
              icon:widget.inputType==InputType.phone?
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Theme.of(context).unselectedWidgetColor),
                ),
                padding:
                EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    Image.asset("assets/images/flag.png"),
                    Text(
                      "+966",
                      style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ):null,
          ),
    );
  }
  int getLength(){
    if (widget.inputType==InputType.phone){
      return 11;
    }else{
      return 4;
    }
  }
}
// counterText: "10",
// prefix: Text("hello"),
// counter: Row(
//   children: [
//     Icon(Icons.ac_unit_outlined),
//     Text("hello")
//   ],
