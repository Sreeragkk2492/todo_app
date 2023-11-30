import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 134, 37),
        actions: [
          Image.asset(
            "assets/todo.png",
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 10,
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "TODO APP",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ))
        ],
        automaticallyImplyLeading: false,
        elevation: 1,
      ),
      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   color: Colors.white,

      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showmydialog(context);
        },
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        splashColor: Color.fromARGB(255, 3, 151, 60),
      ),
    );
  }
}

Future<void> showmydialog(context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        
        return AlertDialog(
          contentPadding: EdgeInsets.all(25),
          backgroundColor: Colors.green,
          title: Text("alertbox"),
          content: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              filled: true,
              hoverColor: Colors.green,
                hintText: "type",
                border:  OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 8,
                  color: Colors.green,
                )),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,),)),
          ),
          actions: [TextButton(onPressed: (){}, child:Text("Done"))],
        );
      });
}
