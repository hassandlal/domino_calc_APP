import 'package:flutter/material.dart';
Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);

Widget mainTextForm (TextEditingController controller,String playerNumber){
  return   TextFormField(
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'please enter player name';
      }
      return null;
    },
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.blueAccent,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      hintText: "$playerNumber player name ...",
    ),
    keyboardType: TextInputType.name,
  );
}
Widget mainText(String playerNumber){
  return Text('$playerNumber player name',style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15),);
}
Widget scoreTextForm (TextEditingController controller){
  return   TextFormField(
    controller: controller,
    validator: (String? value) {
      if (value!.isEmpty) {
        return 'please enter valid score';
      }
      return null;
    },
    decoration: InputDecoration(
      enabledBorder:  OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.blueAccent,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      hintText: "put score here",
    ),
    keyboardType: const TextInputType.numberWithOptions(signed: false,decimal: false),
  );
}


void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(

        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );
