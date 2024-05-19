import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:truth_or_dare/constant.dart';
import 'package:truth_or_dare/models/question_models.dart';
import 'package:truth_or_dare/screens/question_screen/list_item_question.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Data> allDatas = [];

  Future<void> readJsonFile() async {
    final String response = await rootBundle.loadString('lib/assets/data.json');
    final data = await json.decode(response);

    var list = data["Data"] as List<dynamic>;

    setState(() {
      allDatas = [];
      allDatas = list.map((e) => Data.fromJson(e)).toList();
    });
  }

  Future<String> get _directoryPath async {
    Directory directory = await getApplicationDocumentsDirectory();
    print("directory path: " + directory.path);
    return directory.path;
  }

  Future<void> writeJsonFile() async {
    final Data user = Data(id: 10, title: "User", dare: null, truth: null);

    File file = await _jsonFile;
    await file.writeAsString(json.encode(user));
  }

  Future<File> get _jsonFile async {
    final path = await _directoryPath;

    return File('.../lib/assets/customer.json');
  }

  @override
  Widget build(BuildContext context) {
    readJsonFile();
    writeJsonFile();
    readJsonFile();
    _showMessageDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: kPrimaryColor.withOpacity(0.8),
              title: Text(
                'Thêm chủ đề mới',
                style: TextStyle(color: kTextWhiteColor),
              ),
              content: Expanded(
                  child: Container(
                padding: EdgeInsets.only(
                    left: kDefaultPadding / 2, right: kDefaultPadding / 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: kColorHidden.withOpacity(0.2),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: TextField(
                  scrollPadding: EdgeInsets.all(kDefaultPadding / 2),
                  enabled: true,
                  cursorColor: kButtonColor,
                ),
              )),
              actions: [
                Center(
                  child: ElevatedButton(
                    child: Text(
                      'Thêm mới',
                      style: TextStyle(color: kTextWhiteColor),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonColor,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                )
              ],
            ));

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: kColorHidden.withOpacity(0.2),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: kButtonColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  "Truth or Dare",
                  style: TextStyle(
                      color: kTextLightColor,
                      fontFamily: defaultFontFamily,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: kButtonColor,
                  ),
                  onPressed: () {
                    _showMessageDialog(context);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: allDatas.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.2,
                        child: ElevatedButton(
                            child: Text(
                              allDatas[index].title.toString(),
                              style: TextStyle(
                                  color: kTextWhiteColor,
                                  fontFamily: defaultFontFamily),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListItemQuestion(
                                          data: allDatas[index])));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ))),
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
