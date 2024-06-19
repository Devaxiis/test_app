import 'package:flutter/material.dart';
import 'package:onatili_test/src/domain/models/test_model.dart';
import 'package:onatili_test/src/presentation/widget/icon_button.dart';
import 'package:onatili_test/src/utils/data_base/local_data.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<TestModel> data = [];
  String buttobTxt = "Qabul qilish";
  String togriJavob = "";
  bool value = false;
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool a1 = false;
  bool b1 = false;
  bool c1 = false;
  bool d1 = false;
  int index = 1;
  int indexLast = 0;
  bool isDisabled = false;

  @override
  void initState() {
    super.initState();
    data.addAll(LocalData.local);

  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    indexLast = data.length;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        title: const Text("Javobni belgilang",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(data[index].savol, style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black
            ),textAlign: TextAlign.center,),
            IconButtonCustom(
                isDisabled: isDisabled,
                istaped: a,
                togri: a1,
                onTab:(){
              if(b == true || c == true){
                b = false;
                c = false;
                a = !a;
                togriJavob = data[index].javobA;
              }else{
                a = !a;
                togriJavob = data[index].javobA;
              }
              setState(() { });},
                variant: data[index].javobA ),
            IconButtonCustom(
                isDisabled: isDisabled,
                istaped: b,
                togri: b1,
                onTab:(){
              if(a == true || c == true){
                a = false;
                c = false;
                b = !b;
                togriJavob = data[index].javobB;
              }else{
                b = !b;
                togriJavob = data[index].javobB;
              }
              setState(() { });},
                variant: data[index].javobB),
            IconButtonCustom(
                isDisabled: isDisabled,
                istaped: c,
                togri: c1,
                onTab:(){
              if(b == true || a == true){
                b = false;
                a = false;
                c = !c;
                togriJavob = data[index].javobC;
              }else{
                c = !c;
                togriJavob = data[index].javobC;
              }
              setState(() { });},
                variant: data[index].javobC),

            GestureDetector(
              onTap: (){

                if(value == false){
                  isDisabled = true;
                  value = true;
                   if(a == true){
                     a1 = togriJavob == data[index].togtiJavob;
                   }else if(b == true){
                  b1 = togriJavob == data[index].togtiJavob;
                   }else if(c == true){
                  c1 = togriJavob == data[index].togtiJavob;
                   }else{
                  d1 = togriJavob == data[index].togtiJavob;
                   }
                  buttobTxt = "Keyingisi";
                  setState(() {});
                }else{
                  a = false;
                  b = false;
                  c = false;
                  d = false;
                  isDisabled = false;
                  if(index <= indexLast-2){
                  index++;
                  value = false;
                  if(index == indexLast -2){
                    buttobTxt = "Yakunlash";
                  }else{
                  buttobTxt = "Qabul qilish";
                  }
                  setState(() {});
                  }else {
                  }
                  setState(() {});
                }
              },
              child: Container(
                height: 70,
                width: width,
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Container(
                  height: 60,
                  width: width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text(buttobTxt,style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

