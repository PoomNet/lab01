import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';


class DropScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DropScreenState();
  }
}

class DropScreenState extends State {
  List<String> _passs = <String>['', '1', '2', '3', '4', '5'];
  String _pass = "1";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("drop"),
      ),
      body: Form(
        child: ListView(
        children: <Widget>[
          InputDecorator(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: "pass"
            ),
            isEmpty: _pass == "",
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  value: _pass ,
                  isDense: true,
                  onChanged: (value) {
                    setState(() {
                      _pass = value;
                                        });
                  },
                  items: _passs.map((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  }).toList()
                  ),
            ),
          ),
          DateTimePickerFormField(
            inputType: InputType.date,
            initialDate: DateTime.now(),
          format: DateFormat("dd-mm-yy"),
          decoration: InputDecoration(labelText: 'Date'),
          onChanged: (value){},
          )
        ],
      ),
      ),
    );
  }
}
