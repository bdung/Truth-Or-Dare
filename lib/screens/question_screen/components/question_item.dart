
import 'package:flutter/material.dart';

import '../../../constant.dart';

class QuestionItem extends StatefulWidget{
  const QuestionItem({super.key});

  @override
  State<StatefulWidget> createState() => _QuestionItemState();

}
class _QuestionItemState extends State<QuestionItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: kTextWhiteColor,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding/2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 10,
                child: const Text('Thực hiện hít đất 10 cáiThực hiện hít đất 10 cáiThực hiện hít đất 10 cáiThực hiện hít đất 10 cáiThực hiện hít đất 10 cáiThực hiện hít đất 10 cái \n Thực hiện hít đất 10 cái \n Thực hiện hít đất 10 cái \n Thực hiện hít đất 10 cái \n Thực hiện hít đất 10 cái \n Thực hiện hít đất 10 cái \n Thực hiện hít đất 10 cái \n ', style: TextStyle(color: kTextLightColor),)),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  print('oke');
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}