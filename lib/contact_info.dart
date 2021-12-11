import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbab3a2),
      appBar: AppBar(
        leading: Icon(
          Icons.navigate_before,
          size: 40,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "My Contacts",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontSize: 24, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 13),
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                  ),
                  SizedBox(height: 11),
                  Text(
                    "Elon Musk",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text("USA"),
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            ListTile(
              title: Text("Mobile"),
              subtitle: Text("+19876567876"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.sms,
                      size: 17,
                      color: Colors.black,
                    ),
                    radius: 16,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            ListTile(
                title: Text("email"),
                subtitle: Text("elonmusk@gmail.com"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                )),
            SizedBox(
              height: 3,
            ),
            ListTile(
              title: Text("Group"),
              subtitle: Text("Business Partners"),
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 5),
              color: Colors.white,
              height: 27,
              width: 500,
              child: Text(
                "Account Linked",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text("Telegram"),
                  trailing: CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5EjTstwsWDNUpHOYwOWuY_gl9zS2fs1PMSQ4ZPlOg9_1n5IYNDrAnrFHkQHcsUx9xaUM&usqp=CAU"),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                ListTile(
                  title: Text("WhatsApp"),
                  trailing: CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 5),
                  width: 500,
                  color: Colors.white,
                  height: 27,
                  child: Text(
                    "More Options",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text("Share Contact"),
                ),
                SizedBox(
                  height: 3,
                ),
                ListTile(
                  title: Text("QR Code"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
