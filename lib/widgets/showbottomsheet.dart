import 'package:flutter/material.dart';

class Bottomsheet {
  static void sheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (BuildContext builder) {
          return Scaffold(
            body: Center(
              child: Container(
                  
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white10,
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Text(
                          "Add task",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'PlayfairDisplay',
                              fontWeight: FontWeight.bold,
                              color: Colors.lightGreen),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        
                           TextField(
                            
                            cursorColor: Colors.lightGreen,
                           // keyboardType: TextInputType.numberWithOptions(),
                            keyboardAppearance: Brightness.dark,
                            
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
                              floatingLabelStyle: TextStyle(color: Colors.lightGreen),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.lightGreen,width: 5)),
                                labelText: "task",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightGreen),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                           cursorColor: Colors.lightGreen,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
                            floatingLabelStyle: TextStyle(color: Colors.lightGreen),
                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.lightGreen,width: 5)),
                                labelText: "discription",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightGreen),
                                    borderRadius: BorderRadius.circular(10)))),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.lightGreen)),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Center(
                                    child: Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )))
                          ],
                        ),
                      ],
                    ),
                  ),),
            ),
          );
          
          
        });
  }
}
