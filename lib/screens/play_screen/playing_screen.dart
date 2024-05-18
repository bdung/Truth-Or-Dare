import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import 'components/dialog_question.dart';

class PlayingScreen extends StatelessWidget{
  showQuestionDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => DialogQuestion());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: kColorHidden.withOpacity(0.2),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kButtonColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                  child: const Text(
                    "Danh sách câu hỏi",
                    style: TextStyle(
                        color: kTextLightColor,
                        fontFamily: defaultFontFamily,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
          ),

          /*Body of playing screen*/

          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding*2),
            child: Container(
              height: MediaQuery.of(context).size.height/20,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                color: kButtonColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('Mới quen', style: TextStyle(color: kTextWhiteColor,fontWeight: FontWeight.bold, fontSize: 20),)),
            ),
          ),

          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                      ),
                      onPressed: (){
                        showQuestionDialog(context);
                      },
                      child: SizedBox(
                        height: 60,
                        width: 200,
                        child: Center(
                          child: const Text(
                            'Truth ',
                            style: TextStyle(color: kTextWhiteColor),
                          ),
                        ),
                      )
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                      ),
                      onPressed: (){
                        showQuestionDialog(context);
                      },
                      child: SizedBox(
                        height: 60,
                        width: 200,
                        child: Center(
                          child: const Text(
                            'Dare',
                            style: TextStyle(color: kTextWhiteColor),
                          ),
                        ),
                      )
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}