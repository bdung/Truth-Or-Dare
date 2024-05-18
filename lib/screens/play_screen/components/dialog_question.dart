import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truth_or_dare/models/question_models.dart';

import '../../../constant.dart';

class DialogQuestion extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _DialogQuestion();

}
class _DialogQuestion extends State<DialogQuestion>{

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        AlertDialog(
          backgroundColor: kPrimaryColor.withOpacity(0.8),
          title: Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),child: Center(child: Text('Truth', style: TextStyle(color: kTextWhiteColor,fontWeight: FontWeight.bold),))),
          content: Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width*3/4,
            child: Padding(
              padding: const EdgeInsets.only(bottom: kDefaultPadding),
              child: SingleChildScrollView(
                child: Text('Dialog - một thành phần rất hay sử dụng trong Android app. Phần tử giao diện người dùng có vẻ đơn giản này có rất nhiều tính năng ẩn. Nếu bạn đã từng phát triển một ứng dụng, có thể bạn đã sử dụng nó rất nhiều phải Dialog - một thành phần rất hay sử dụng trong Android app. Phần tử giao diện người dùng có vẻ đơn giản này có rất nhiều tính năng ẩn. Nếu bạn đã từng phát triển một ứng dụng, có thể bạn đã sử dụng nó rất nhiều phải n đã từng phát triển một ứng dụng, có thể bạn đã sử dụng nó rất nhiều phảin đã từng phát triển một ứng dụng, có thể bạn đã sử dụng nó rất nhiều phảin đã từng phát triển một ứng dụng, có thể bạn đã sử dụng nó rất nhiều phải', style: TextStyle(fontWeight: FontWeight.bold, color: kTextWhiteColor),),


              ),
            ),

          ),
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width*3/4,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kButtonColor,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'TIẾP TỤC',
              style: TextStyle(color: kTextWhiteColor),
            ),
          ),
        ),
      ],
    );
  }

}