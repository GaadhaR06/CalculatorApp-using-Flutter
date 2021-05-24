import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';

// ignore: must_be_immutable
class Calc extends StatefulWidget  {
  @override
  _CalcState createState() => _CalcState();
}
class _CalcState extends State<Calc> {

  dynamic ans = 0;
  dynamic a = 0, b = 0, counta = 1, countb = 1, place;
  dynamic c = 0, d = 0;

  Widget eachButton( {String buttonName, void Function() buttonPress,})  {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: buttonPress,
      child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 25,
          ),
      ),
      elevation: 30,
      shape: StadiumBorder(),
      padding: EdgeInsets.all(5),
      focusColor: Colors.black38,
      splashColor: Colors.black45,

    );
  }

  @override
  Widget build(BuildContext context)  {
    Widget eachRow1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        eachButton(buttonName: "^", buttonPress: () {
          setState(() {
            c = '^';
            ans = ans.toString() + c;
          });
        }, ),
        eachButton(buttonName: "%", buttonPress: () {
          setState(() {
            ans = ans/100;
            a = ans;
            Text("$ans");
          });
        }, ),
        // ignore: deprecated_member_use
        RaisedButton(
          onPressed:()  {
            setState(() {
              ans = ans.toString();
              print(ans.runtimeType);
              //String ans1 = "hello";
              ans = ans.substring(0,ans.length-1);
              }
            );
          },
          child: Icon(Icons.backspace_outlined, size: 18),
          elevation: 40,
          shape: StadiumBorder(),
          padding: EdgeInsets.all(10),
          focusColor: Colors.black38,
          splashColor: Colors.black45,
        ),
        eachButton(buttonName: "AC", buttonPress: () {
          setState(() {
            ans = 0;
            a=0; b=0; c=0; counta = 1; countb = 1; d = 0;
            Text('$ans');
          });
           }, ),
      ],
    );

    Widget eachRow2 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        eachButton(buttonName: "7",
          buttonPress: () {
          setState(() {
            if(c == 0)  {
              if(d == '.')  {
                place = pow(10, counta);
                //print(place);
                a = a + 7/place;
                counta++;
                ans = a;
              }
              else{
                a = a*10 + 7;
                ans = a;
              }

            }
            else {
              if (d == '.') {
                place = pow(10, countb);
                //print(place);
                b = b + 7 / place;
                countb++;
                ans = a.toString() + c.toString() + b.toString();
              }
              else {
                b = b * 10 + 7;
                ans = a.toString() + c.toString() + b.toString();
              }
            }
          });
          Text('$ans');

          }, ),
        eachButton(buttonName: "8",
          buttonPress: () {setState(() {
            if(c == 0)  {
              if(d == '.')  {
                place = pow(10, counta);
                //print(place);
                a = a + 8/place;
                counta++;
                ans = a;
              }
              else{
                a = a*10 + 8;
                ans = a;
              }

            }
            else {
              if (d == '.') {
                place = pow(10, countb);
                //print(place);
                b = b + 8 / place;
                countb++;
                ans = a.toString() + c.toString() + b.toString();
              }
              else {
                b = b * 10 + 8;
                ans = a.toString() + c.toString() + b.toString();
              }
            }
          });
          Text('$ans');
          }, ),
        eachButton(buttonName: "9",
          buttonPress: () {setState(() {
            if(c == 0)  {
              if(d == '.')  {
                place = pow(10, counta);
                //print(place);
                a = a + 9/place;
                counta++;
                ans = a;
              }
              else{
                a = a*10 + 9;
                ans = a;
              }

            }
            else {
              if (d == '.') {
                place = pow(10, countb);
                //print(place);
                b = b + 9 / place;
                countb++;
                ans = a.toString() + c.toString() + b.toString();
              }
              else {
                b = b * 10 + 9;
                ans = a.toString() + c.toString() + b.toString();
              }
            }
          });
          Text('$ans');
          }, ),
        eachButton(buttonName: "/", buttonPress: () {
          setState(() {
            c = '/';
            ans = ans.toString() + c;
            d = 0;
          });
         },
        ),
      ],
    );

    Widget eachRow3 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        eachButton(buttonName: "4",
          buttonPress: () {
            setState(() {
              if(c == 0)  {
                if(d == '.')  {
                  place = pow(10, counta);
                  //print(place);
                  a = a + 4/place;
                  counta++;
                  ans = a;
                }
                else{
                  a = a*10 + 4;
                  ans = a;
                }

              }
              else {
                if (d == '.') {
                  place = pow(10, countb);
                  //print(place);
                  b = b + 4 / place;
                  countb++;
                  ans = a.toString() + c.toString() + b.toString();
                }
                else {
                  b = b * 10 + 4;
                  ans = a.toString() + c.toString() + b.toString();
                }
              }
            });
            Text('$ans');
          }, ),

        eachButton(buttonName: "5",
          buttonPress: () {
            setState(() {
              if(c == 0)  {
                if(d == '.')  {
                  place = pow(10, counta);
                  //print(place);
                  a = a + 5/place;
                  counta++;
                  ans = a;
                }
                else{
                  a = a*10 + 5;
                  ans = a;
                }
              }
              else {
                if (d == '.') {
                  place = pow(10, countb);
                  //print(place);
                  b = b + 5 / place;
                  countb++;
                  ans = a.toString() + c.toString() + b.toString();
                }
                else {
                  b = b * 10 + 5;
                  ans = a.toString() + c.toString() + b.toString();
                }
              }
            });
            Text('$ans');
          }, ),
        eachButton(buttonName: "6",
          buttonPress: () {setState(() {
            if(c == 0)  {
              if(d == '.')  {
                place = pow(10, counta);
                //print(place);
                a = a + 6/place;
                counta++;
                ans = a;
              }
              else{
                a = a*10 + 6;
                ans = a;
              }
            }
            else {
              if (d == '.') {
                place = pow(10, countb);
                //print(place);
                b = b + 6 / place;
                countb++;
                ans = a.toString() + c.toString() + b.toString();
              }
              else {
                b = b * 10 + 6;
                ans = a.toString() + c.toString() + b.toString();
              }
            }
          });
          Text('$ans');
          }, ),
        eachButton(buttonName: "x",
          buttonPress: () {
           setState(() {
             c = '*';
             ans = ans.toString() + c;
             d = 0;
           });
          },
        ),
      ],
    );

    Widget eachRow4 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        eachButton(
          buttonName: "1",
          buttonPress: () {
             setState(() {
               if(c == 0)  {
                 if(d == '.')  {
                   place = pow(10, counta);
                   //print(place);
                   a = a + 1/place;
                   counta++;
                   ans = a;
                 }
                 else{
                   a = a*10 + 1;
                   ans = a;
                 }
               }
               else {
                 if (d == '.') {
                   place = pow(10, countb);
                   //print(place);
                   b = b + 1 / place;
                   countb++;
                   ans = a.toString() + c.toString() + b.toString();
                 }
                 else {
                   b = b * 10 + 1;
                   ans = a.toString() + c.toString() + b.toString();
                 }
               }
             });
            Text('$ans');
          },
        ),
        eachButton(buttonName: "2",
          buttonPress: () {
            setState(() {
              if(c == 0)  {
                if(d == '.')  {
                  place = pow(10, counta);
                  //print(place);
                  a = a + 2/place;
                  counta++;
                  ans = a;
                }
                else{
                  a = a*10 + 2;
                  ans = a;
                }
              }
              else {
                if (d == '.') {
                  place = pow(10, countb);
                  //print(place);
                  b = b + 2 / place;
                  countb++;
                  ans = a.toString() + c.toString() + b.toString();
                }
                else {
                  b = b * 10 + 2;
                  ans = a.toString() + c.toString() + b.toString();
                }
              }
            });
            Text('$ans');

          }, ),
        eachButton(buttonName: "3",
          buttonPress: () {
            setState(() {
              if(c == 0)  {
                if(d == '.')  {
                  place = pow(10, counta);
                  //print(place);
                  a = a + 3/place;
                  counta++;
                  ans = a;
                }
                else{
                  a = a*10 + 3;
                  ans = a;
                }
              }
              else {
                if (d == '.') {
                  place = pow(10, countb);
                  //print(place);
                  b = b + 3 / place;
                  countb++;
                  ans = a.toString() + c.toString() + b.toString();
                }
                else {
                  b = b * 10 + 3;
                  ans = a.toString() + c.toString() + b.toString();
                }
              }
            });
            Text('$ans');

          }, ),
        eachButton(
          buttonName: "-",
          buttonPress: () {
            setState(() {
              c = '-';
              ans = ans.toString() + c;
              d = 0;
            });
          },
        ),
      ],
    );

    Widget eachRow5 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        eachButton(buttonName: ".", buttonPress: () {
          setState(() {
            d = '.';
            ans = ans.toString() + d;
          });
        }, ),
        eachButton(buttonName: "0", buttonPress: () {
          setState(() {
            if(c == 0)  {
              if(d == '.')  {
                place = pow(10, counta);
                //print(place);
                a = a + 0/place;
                counta++;
                ans = a;
              }
              else{
                a = a*10 + 0;
                ans = a;
              }
            }
            else {
              if (d == '.') {
                place = pow(10, countb);
                //print(place);
                b = b + 0 / place;
                countb++;
                ans = a.toString() + c.toString() + b.toString();
              }
              else {
                b = b * 10 + 0;
                ans = a.toString() + c.toString() + b.toString();
              }
            }
          Text('$ans');
        });
        }, ),
        eachButton(buttonName: "=",
          buttonPress: () {
            setState(() {
              if(c == '+') {
                ans = a + b;
              }
              else if(c == '-') {
                ans = a - b;
              }
              else if(c == '*') {
                ans = a * b;
              }
              else if(c == '/') {
                if(b == 0)  {
                  ans = "invalid";
                }
                else{
                  ans = a / b;
                }
              }
              else if(c == '^') {
                ans = pow(a,b);
              }
                Text('$ans');
                c = 0; a = ans; b = 0; counta = 1; countb = 1; d = 0;
            });
        }, ),
        eachButton(buttonName: "+", buttonPress: () {
          setState(() {
            c = '+';
            ans = ans.toString() + c;
          });
         },
        ),
      ],
    );


    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black45,
            height: MediaQuery.of(context).size.height/3,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '$ans',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                ),
             ),
            ),
          ),
          Expanded(
            child: Container(
              //height: MediaQuery.of(context).size.height;
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 10,
                    spreadRadius: 7,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  eachRow1,
                  eachRow2,
                  eachRow3,
                  eachRow4,
                  eachRow5,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


