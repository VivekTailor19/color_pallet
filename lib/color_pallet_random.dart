import 'dart:math';
import 'package:flutter/material.dart';

class Color_Pallet_Random extends StatefulWidget {
  const Color_Pallet_Random({Key? key}) : super(key: key);

  @override
  State<Color_Pallet_Random> createState() => _Color_Pallet_RandomState();
}
List col = [];


int a=0,b=0,c=0,d=0,e=0,f=0;


int? num ;

List temp = [];
List colors = [
  Colors.blue,
  Colors.white,
  Colors.black,
  Colors.grey,
  Colors.redAccent,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.pinkAccent,
  Colors.purpleAccent,
  Colors.deepPurpleAccent,
  Colors.orangeAccent,
  Colors.deepOrangeAccent
];

class _Color_Pallet_RandomState extends State<Color_Pallet_Random> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffD8E6F4),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Color Palette\n",
                        style: TextStyle(fontSize: 25, color: Color(0xff3BB3F9))),
                    TextSpan(
                        text: "Generator",
                        style: TextStyle(fontSize: 25, color: Color(0xff3BB3F9))),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.teal,),
                child: Column(
                  children: [
                    Expanded(child: Pallet(colors[a])),
                    Expanded(child: Pallet(colors[b])),
                    Expanded(child: Pallet(colors[c])),
                    Expanded(child: Pallet(colors[d])),
                    Expanded(child: Pallet(colors[e])),
                    Expanded(child: Pallet(colors[f])),

                    // Pallet(colors[b]),
                    // Pallet(colors[b]),
                    // Pallet(colors[c]),
                    // Pallet(colors[d]),
                    // Pallet(colors[e]),
                    // Pallet(colors[f]),
                  ],
                ),
              ), //Color Pallet
              GestureDetector(onTap: () {
                setState(() {
                  Random rand = Random();
                  a = rand.nextInt(12);

                  b = rand.nextInt(12);
                  while(b == a)
                    {
                      b = rand.nextInt(12);
                    };

                  c = rand.nextInt(12);
                  while(c == a || c==b)
                  {
                    c = rand.nextInt(12);
                  };

                  d = rand.nextInt(12);
                  while(d == a || d==b || d==c)
                  {
                    d = rand.nextInt(12);
                  };

                  e = rand.nextInt(12);
                  while(e == a || e==b || e==c || e==d)
                  {
                    e = rand.nextInt(12);
                  };

                  f = rand.nextInt(12);
                  while(f == a || f==b || f==c || f==d || f==e)
                  {
                    f = rand.nextInt(12);
                  };
                  temp = [a,b,c,d,e,f];


                  // for(int g = 0 ; g<6 ; g++)
                  // {
                  //   colors[m]=temp[n];
                  // }
                  //

                  print ("$temp $a $b $c $d $e $f");


                });



              },

                child: Container(
                  height: 50,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(15)),
                    border: Border.all(color: Color(0xff3BB3F9)),
                  ),

                  child: Text("Generate",
                      style: TextStyle(fontSize: 25, color: Color(0xff3BB3F9))),
                ),
              ), //    Generate
            ],
          ),
        ),
      ),
    );
  }

  Widget Pallet(Color c1)
  {
    return Container(
      height: 40,
      width: 75,
      color: c1,
    );
  }

}
