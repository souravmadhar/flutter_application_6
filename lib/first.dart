import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class firstscreen extends StatefulWidget {
  firstscreen({super.key});

  @override
  State<firstscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<firstscreen> {
  var color = 1;
  var number = 1;
  TextEditingController Textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("new"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      color = 1;
                    });
                  },
                  child: Text("red")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      color = 2;
                    });
                  },
                  child: Text("green")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      color = 3;
                    });
                  },
                  child: Text("blur")),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: TextField(
                controller: Textcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("data"),
                  hintText: "Enter the number of box:",
                  prefixIcon: Icon(Icons.home),
                ),
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    number = int.parse(Textcontroller.text.toString());
                  });
                },
                child: const Text("update"))
          ]),
          Wrap(
              spacing: 10,
              runSpacing: 10,
              direction: Axis.horizontal,
              children: getwrapwidget())
        ]),
      ),
    );
  }

  List<Widget> getwrapwidget() {
    var List = <Widget>[];
    for (int i = 0; i < number; i++) {
      List.add(Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(10),
        color: color == 1
            ? Colors.red
            : color == 2
                ? Colors.green
                : Colors.blue,
      )
      );
    }
    return List;
  }
}
