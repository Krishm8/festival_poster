import 'package:festival_poster/util.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isList = false;

  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          InkWell(
            onTap: () {
              isList = !isList;
              setState(() {});
            },
            child: Icon(
              isList ? Icons.list : Icons.grid_on,
              size: 25,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: isList ? Listview() : Gridview(),
    );
  }
}

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  int? index;
  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)?.settings.arguments as String;

    return ListView(
      padding: EdgeInsets.all(10),
      children: ImgList.map((e) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "edit",arguments: e);
              },
              child: Image.asset(e[title] ?? "")),
        );
      }).toList(),
    );
  }
}

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)?.settings.arguments as String;
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      children: ImgList.map((e) {
        return InkWell(
            onTap: () {
              Navigator.pushNamed(context, "edit", arguments: e[title]);
            },
            child: Image.asset(e[title]??""));
      }).toList(),
    );
  }
}
