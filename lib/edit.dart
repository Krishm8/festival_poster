import 'dart:typed_data';
import 'dart:ui';

import 'package:festival_poster/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String? product;
  GlobalKey key = GlobalKey();
  String? pframe = "images/Frame/2.png";
  int fem = 1;
  int? index;
  TextEditingController edittext = TextEditingController();
  double? x;
  double? y;
  int? focolour;
  double? fosize;

  @override
  Widget build(BuildContext context) {
    product = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                RenderRepaintBoundary rrb = key.currentContext
                    ?.findRenderObject() as RenderRepaintBoundary;
                var image = await rrb.toImage();
                var pngImg =
                    await image.toByteData(format: ImageByteFormat.png);
                Uint8List? asUint8List = pngImg?.buffer.asUint8List();
                savedImg = asUint8List;
                Navigator.pushNamed(context, "save");
              },
              child: Icon(Icons.camera_alt)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          RepaintBoundary(
            key: key,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              // clipBehavior: Clip.antiAlias,
              child: Stack(
                // fit: StackFit.expand,
                children: [
                  Image.asset(
                    product ?? "",
                    height: 400,
                    width: 550,
                    fit: BoxFit.cover,
                  ),
                  (fem == 0)
                      ? Image.asset(
                          pframe ?? "",
                          height: 500,
                          width: 500,
                          fit: BoxFit.contain,
                        )
                      : SizedBox.expand(),
                  Align(
                    alignment: Alignment(x ?? -1, y ?? 0),
                    child: Text(
                      etname.etext ?? "",
                      style: TextStyle(
                        fontSize: fosize,
                        color: Color(focolour ?? 0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IndexedStack(
                    index: index,
                    children: [
                      Column(
                        children: [
                          TextFormField(
                            controller: edittext,
                            decoration: InputDecoration(
                              hintText: "Enter Text",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.blue),
                                ),
                                onPressed: () {
                                  etname.etext = edittext.text;
                                  setState(() {});
                                },
                                child: Text("Save"),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black),
                                ),
                                onPressed: () {
                                  edittext.clear();
                                  etname.etext = edittext.text;
                                  setState(() {});
                                },
                                child: Text("Save"),
                              ),
                            ],
                          ),
                          Text(
                            "X",
                            style: TextStyle(fontSize: 20),
                          ),
                          Slider(
                            min: -1,
                            max: 1,
                            value: x ?? -1,
                            onChanged: (value) {
                              x = value;
                              setState(() {});
                            },
                          ),
                          Text(
                            "Y",
                            style: TextStyle(fontSize: 20),
                          ),
                          Slider(
                            min: -1,
                            max: 1,
                            value: y ?? 0,
                            onChanged: (value) {
                              y = value;
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                fem = 1;
                                setState(() {});
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10, bottom: 20),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    "Remove \n Frame",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: fram.map((e) {
                                  return InkWell(
                                    onTap: () {
                                      pframe = e["f1"];
                                      fem = 0;
                                      setState(() {});
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 10, bottom: 20),
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                        e["f1"],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Row(
                      //   children: fontstyle.map((e) {
                      //     return Container(
                      //       margin: EdgeInsets.only(left: 10),
                      //       height: 60,
                      //       width: 60,
                      //       color: Colors.green,
                      //       child: Center(
                      //           child: Text(
                      //         e,
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           color: Colors.white,
                      //         ),
                      //       )),
                      //     );
                      //   }).toList(),
                      // ),
                      Container(
                        height: 60,
                        width: 60,
                        color: Colors.red,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: fontcolour.map(
                            (e) {
                              return InkWell(
                                onTap: () {
                                  focolour = e;
                                  setState(() {});
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 60,
                                  width: 60,
                                  color: Color(e),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                      Slider(
                        min: 10,
                        max: 50,
                        value: fosize ?? 10,
                        onChanged: (value) {
                          fosize = value;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          index = 0;
                          setState(() {});
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(right: 10, left: 10, bottom: 10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Add\nText",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          index = 1;
                          setState(() {});
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10, bottom: 10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "  Add\nBorder",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          index = 2;
                          setState(() {});
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10, bottom: 10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Font\nStyle",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          index = 3;
                          setState(() {});
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10, bottom: 10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "  Font\nColour",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          index = 4;
                          setState(() {});
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10, bottom: 10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Font\nSize",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
