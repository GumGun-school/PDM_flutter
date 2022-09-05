
import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  const UserCard({
    Key? key,
  }) : super(key: key);

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  int button = 0;

  void selectButton(value){
    button=value;
    setState(() {
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 46
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flutter McFlutter",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Text("Experienced App Developer"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left:20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("123 Main Street"),
                  Text("(425) 555-0198"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  color: button==1?Colors.indigo:Colors.black,
                  icon: Icon(
                    Icons.accessibility_rounded
                  ),
                  onPressed: (){
                    selectButton(1);
                    ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text("Únete a un club con otras personas"),
                      ),
                    );
                  }
                ),
                IconButton(
                  color: button==2?Colors.indigo:Colors.black,
                  icon: Icon(
                    Icons.timer
                  ),
                  onPressed: (){
                    selectButton(2);
                    ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text("Cuenta regresiva para el evento: 31 días"),
                      ),
                    );
                  }
                ),
                IconButton(
                  color: button==3?Colors.indigo:Colors.black,
                  icon: Icon(
                    Icons.smartphone_rounded
                  ),
                  onPressed: (){
                    selectButton(3);
                    ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text("Llama al número 4155550198"),
                      ),
                    );
                  }
                ),
                IconButton(
                  color: button==4?Colors.indigo:Colors.black,
                  icon: Icon(
                    Icons.smartphone_rounded
                  ),
                  onPressed: (){
                    selectButton(4);
                    ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text("Llama al celular 3317865113"),
                      ),
                    );
                  }
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 3),
          ],
        ),
      ),
    );
  }
}