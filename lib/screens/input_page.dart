import 'package:flutter/material.dart';
import 'package:vucutkitle/CalculatorBrain.dart';
import 'package:vucutkitle/components/resuable_card.dart';
import 'package:vucutkitle/screens/result_page.dart';

import '../components/BottomButton.dart';
import '../components/CustomIconButton.dart';
import '../constant.dart';
import '../components/icon_content.dart';

Color erkekRengi =  Color(0xFF111328);
Color kadinRengi =  Color(0xFF111328);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Cinsiyet{
    erkek,
    kiz,
}

enum Aritmatik{
  kiloArttir,
  kiloAzlat,
  yasArttir,
  yasAzalt,
  
}

class _InputPageState extends State<InputPage> {
  /*
          void cinsiyetSec({ required Cinsiyet c}){
            if(c==Cinsiyet.erkek){
              secilenCinsiyet = Cinsiyet.erkek;
                setState(() {
                debugPrint("erkek cinsiyeti secildi");
              });
            } else{
              secilenCinsiyet = Cinsiyet.kiz;
                setState(() {
                debugPrint("kız cinsiyeti secildi");
              });
            }

            
          }
  */
  int boy = 120; 
  int kilo = 45; 
  int yas = 18;

  void kiloArttir(){
    kilo++;
    setState(() {
      
    });
    
  }

  void kiloAzalt(){
    kilo--;
    setState(() {
      
    });
  }

  void yasArttir(){
    yas++;
    setState(() {
      
    });
  }

  void yasAzalt(){
    yas--;
    setState(() {
      
    });
  }

  void evrenselIslem(){

  }

  
  
  void erkekCinsiyetiSecimi(){
    secilenCinsiyet = Cinsiyet.erkek;
    setState(() {
      debugPrint(" secilenCinsiyet = Cinsiyet.erkek;");
    });
  }

  void kizCinsiyetiSecimi(){
    secilenCinsiyet = Cinsiyet.kiz;
    setState(() {
      debugPrint("secilenCinsiyet = Cinsiyet.kiz;");
    });
  }
  Cinsiyet? secilenCinsiyet;

  void cinsiyetSecimi(Cinsiyet secim){ // seçim 1 erkek. 2. kadın
    if(secim==Cinsiyet.erkek){
      erkekRengi = kActiveCardColor;
      kadinRengi = kInactiveCardColor;
      print("male seçildi");
    }
    else{
      kadinRengi = kActiveCardColor;
      erkekRengi = kInactiveCardColor;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomContainer(
                    colour: secilenCinsiyet==Cinsiyet.erkek? kActiveCardColor: kInactiveCardColor,
                    functionVer:erkekCinsiyetiSecimi,
                    widgetVer: CustomColumn(
                      cinsiyetSecimi: "Male",
                      iconGir: Icons.male,
                    ),
                  )
                ),
                Expanded(
                  child: CustomContainer(
                    functionVer: kizCinsiyetiSecimi,
                    widgetVer: CustomColumn(
                      cinsiyetSecimi: "Female",
                      iconGir: Icons.female,
                    ),
                    colour: secilenCinsiyet == Cinsiyet.kiz? kActiveCardColor : kInactiveCardColor,
                  )
                ),
              ],
            )
          ),
          Expanded(
            child: CustomContainer(
              widgetVer: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  "Height",
                  style: kLabelTextStyle,  
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text("$boy",
                    style: cSayiTextStyle
                  ),
                    const Text(
                      "cm",
                      style: kLabelTextStyle,
                    ),
                  ],
                ),

                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    overlayColor: Color(0x29EB1555),
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 15.0,
                    ),
                    overlayShape: const RoundSliderOverlayShape(
                      overlayRadius: 30.0,
                      
                    ),
                  ),
                  child: Slider(
                    
                    min: 120,
                    max: 220,

                    value: boy.toDouble(),
                    onChanged: (double onSayi){
                      debugPrint("$onSayi");
                      boy = onSayi.round();
                      setState(() {
                        
                      });
                    }
                    
                  ),
                )
              
                ],
              ),
              colour:kActiveCardColor
            )
          ),

          Expanded(
            child: Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      colour: kActiveCardColor,
                      widgetVer: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("WEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Text("$kilo",
                            style: cSayiTextStyle,
                          ),

                          Row( //TODO: iki buton eklenecek
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              

                              

                              CustomIconButton(
                                widgetVer: Icons.remove,
                                fonksiyonVer: kiloAzalt,
                              ),

                              const SizedBox(width: 10.0,),

                              CustomIconButton(
                                widgetVer:Icons.add,
                                fonksiyonVer: kiloArttir,
                              ),
                            ],

                          )
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    child: CustomContainer(
                      widgetVer: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("AGE",
                            style: kLabelTextStyle,
                          ),
                          Text("$yas",
                            style: cSayiTextStyle,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              
                              CustomIconButton(
                                widgetVer:Icons.remove,
                                fonksiyonVer: yasAzalt,
                              ),
                              const SizedBox(width: 10.0,),
                              CustomIconButton(
                                widgetVer:Icons.add,
                                fonksiyonVer: yasArttir,
                              ),
                            ],
                          )
                        ],
                      ),
                      colour:kActiveCardColor
                    )
                  ),
                ],
              ),
          ),

          BottomButton(
            textGir: "CALCULATE",
            fonksiyonGir: (){
              CalculatorBrain cb = CalculatorBrain(cHeight: boy, cWeight:kilo);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    cCalculateBMI:cb.calculateBMI(),
                    CgetInterpration: cb.getInterpration(),
                    cGetResult: cb.getResult(),
                  ),
                )
              );

              print("result page e git");


            },
          )
        ],
      ),
    );
  }
}







