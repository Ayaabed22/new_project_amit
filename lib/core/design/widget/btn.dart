import 'package:flutter/material.dart';
import 'package:untitled2/core/design/res/colors.dart';

enum BtnType { elevated, outLine, cancel, reject,outLineDisabled }

class Btn extends StatelessWidget {
  final String text;
  final VoidCallback? onPress;
  final BtnType btnType;

  const Btn(
      {Key? key,
      this.text = " ",
      this.onPress,
      this.btnType = BtnType.elevated,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0x1361B80C), blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: btnType == BtnType.outLine || btnType==BtnType.outLineDisabled
          ? OutlinedButton(
              onPressed: () {
                if(btnType == BtnType.outLineDisabled){
                  FocusManager.instance.primaryFocus!.unfocus();
                  onPress!();
                }

              },
              style: OutlinedButton.styleFrom(
                foregroundColor: btnType != BtnType.outLineDisabled? null :Theme.of(context).unselectedWidgetColor,
                  side: BorderSide(color: btnType != BtnType.outLineDisabled?Theme.of(context).primaryColor: Theme.of(context).unselectedWidgetColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),

              child: Text(text,style: TextStyle( color: btnType != BtnType.outLineDisabled ? null: Colors.grey))
      )
          : ElevatedButton(
              onPressed: () {
                if (onPress != null) {
                  onPress!( );
                }
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Text(text),
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  foregroundColor: btnType==BtnType.cancel?Color(0xffFF0000):null,
                  backgroundColor: btnType==BtnType.cancel?Color(0xffFFE1E1):null,
                  fixedSize:Size(343,60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
    );
  }
}
