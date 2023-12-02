import 'package:flutter/material.dart';
import 'package:todo_app/widgets/showbottomsheet.dart';

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
       body:ListTile(),

      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
     Bottomsheet.sheet(context);
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

