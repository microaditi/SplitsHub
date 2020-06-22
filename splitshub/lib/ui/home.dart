import 'package:flutter/material.dart';


class BillSplitter extends StatefulWidget {
  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {

  int _tipPercentage = 0;
  int _personCOunter = 1;
  double _billAmount = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //margin: EdgeInsets.only(top: 122.0),
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
        alignment: Alignment.center,
        color: Colors.deepOrange.shade200,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.5),
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Text("Total Amount per head"),
                  Text("Rs. 500 "),
              ],
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.4),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.blueGrey.shade200,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(12.0)
              ),

              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      prefixText: "BILL AMOUNT ",
                      prefixIcon: Icon(Icons.attach_money)
                    ),
                    onChanged: (String value){
                      try{
                        _billAmount = double.parse(value);

                      }catch(exception){
                        _billAmount = 0.0;
                      }
                    },
                  )
                ],
              ),
            ),
          //child: Column(,

          //)
          ],
        ),
    ),
    );

    }
  }

