import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPrescription extends StatefulWidget {
  const AddPrescription({Key? key}) : super(key: key);

  @override
  State<AddPrescription> createState() => _AddPrescriptionState();
}

class _AddPrescriptionState extends State<AddPrescription> {
  @override
  Widget build(BuildContext context) {
    BuildContext mainContext = context;
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: 60.0),
            decoration: BoxDecoration(
                color: Color(0xff16C5AC),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
            child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.0072
                ),
                child: Row(
                    children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    alignment: Alignment.topLeft,
                  ),
                  Text(
                    "New Prescription",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ])),
          ),
          Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Medicine Name:",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
          Container(
              padding: EdgeInsets.only(
                  right: 20.0, left: 20.0, top: 15.0, bottom: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Medicine Name",
                  fillColor: Color(0xff16C5AC).withOpacity(0.2),
                  filled: true,
                ),
              )),
          Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Dose:",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
          Container(
              padding: EdgeInsets.only(
                  right: 20.0, left: 20.0, top: 15.0, bottom: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Dose",
                  fillColor: Color(0xff16C5AC).withOpacity(0.2),
                  filled: true,
                ),
              )),
          Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Drug Form:",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
          Container(
              padding: EdgeInsets.only(
                  right: 20.0, left: 20.0, top: 15.0, bottom: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Select drug form",
                  fillColor: Color(0xff16C5AC).withOpacity(0.2),
                  filled: true,
                ),
              )),
          Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Note:",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
          Container(
              padding: EdgeInsets.only(
                  right: 20.0, left: 20.0, top: 15.0, bottom: 15.0),
              margin: EdgeInsets.only(bottom: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter note",
                  fillColor: Color(0xff16C5AC).withOpacity(0.2),
                  filled: true,
                ),
              )),
          GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: mainContext,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Color(0xff16C5AC),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0))),
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 50.0, left: 5.0),
                                child: Text(
                                  "Are yout sure you want \n to add this prescription",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 20.0, left: 5.0, bottom: 60.0),
                                child: Text(
                                  "Once the prescription is added you won’t \n be able to edit or delete the prescription.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                )),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 60.0,
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(mainContext).size.width *
                                      0.8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 40.0, bottom: 20.0),
                                  child: Text(
                                    "Yes, Add Prescription",
                                    style: TextStyle(
                                        color: Color(0xff16C5AC),
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 60.0,
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(mainContext).size.width *
                                      0.8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  margin: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    "No, Don't Add Prescription",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                height: 60.0,
                alignment: Alignment.center,
                width: MediaQuery.of(mainContext).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Color(0xff16C5AC),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text(
                  "Add Prescription",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ],
      ),
    );
  }
}
