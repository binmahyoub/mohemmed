import 'package:flutter/material.dart';
class mob extends StatelessWidget {
  const mob({super.key});

  @override
  Widget build(BuildContext context) {
    return calculator();
  }
}
class calculator extends StatefulWidget {


  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String output ='0';
  String _output ='';
  double num1=0.0;
  double num2=0.0;
  String operand='';

  void buttonpressed(String buttontext){
    if(buttontext=='CLEAR'){
      _output ='0';
      num1=0.0;
      num2=0.0;
      operand='';

    }
    else if (buttontext =='+' || buttontext =='-'|| buttontext=='/' || buttontext=='X'){
      num1 =double.parse(output);
      operand=buttontext;
      _output='0';
      output=output+buttontext;
    }
    else if(buttontext=='.') {
      if (_output.contains('.')) {
        return;
      }
      else {
        _output = _output + buttontext;
      }
    }
    else if(buttontext=='='){
      num2=double.parse(output);
       if(operand=='+'){
         _output=(num1+num2).toString();
       }
      if(operand=='-'){
        _output=(num1-num2).toString();
      }
      if(operand=='X'){
        _output=(num1*num2).toString();
      }
      if(operand=='/'){
        _output=(num1/num2).toString();
      }
      num1=0.0;
      num2=0.0;
      operand='';

    }else{
      _output=_output+buttontext;
    }
    setState(() {
      output= double.parse(_output).toStringAsFixed(2);
    });

  }


 Widget buttform (String txtbton,tr,nm){
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        decoration: BoxDecoration(

          borderRadius: BorderRadius.all(Radius.elliptical(6, 7)) ,
          color: Colors.cyanAccent,
        ),
        width: tr,
       height: nm,

       child: RawMaterialButton(onPressed: () {
         buttonpressed(txtbton);
       },

         child: Text(txtbton,
         style: TextStyle(
           color: Colors.cyan
         ),

         ),


       ) ,
   ),
    );

 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:Padding(
        padding: EdgeInsets.all(5.0),
        child:Column (
            children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
                Text("$_output",
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 100
                  ),
                )
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [

                buttform("1",100,100),
                  buttform("2",100,100),
                  buttform("3",100,100),
                  buttform("/",100,100),



                ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [

                    buttform("4",100,100),
                    buttform("5",100,100),
                    buttform("6",100,100),
                    buttform("x",100,100),



                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [

                    buttform("7",100,100),
                    buttform("8",100,100),
                    buttform("9",100,100),
                    buttform("-",100,100),



                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [

                    buttform(".",100,100),
                    buttform("0",100,100),
                    buttform("00",100,100),
                    buttform("+",100,100),



                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  buttform("CLEAR", 208, 100),
                  buttform("=", 200, 100),

                ],
              )
          ],
        ),
      ) ,
    ) ;
  }
}


