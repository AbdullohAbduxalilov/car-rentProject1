import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController smsCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.add_moderator,
                  color: Colors.blue,
                  size: 30.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  Icons.vpn_key,
                  color: Colors.blue,
                  size: 30.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  Icons.add_business_sharp,
                  color: Colors.blue,
                  size: 30.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  Icons.directions_car_outlined,
                  color: Colors.blue,
                  size: 30.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Create account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 60.0,),
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/468/305/png-transparent-user-profile-computer-icons-avatar-silhouettes-set.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Container(
                  width: 150.0,
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "type your name....",
                      labelText: "First name",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.0),),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 150.0,
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "type your last name....",
                      labelText: "last name",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20.0),),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            TextFormField(
              style: TextStyle(
                  color: Colors.black54, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: "type your username....",
                labelText: "User name",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.0),),
                fillColor: Colors.grey.shade300,
                filled: true,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            TextFormField(
              style: TextStyle(
                  color: Colors.black54, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: "type your date of birth....",
                labelText: "Date of birth",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.0),),
                fillColor: Colors.grey.shade300,
                filled: true,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            TextFormField(
              style: TextStyle(
                  color: Colors.black54, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: "type your email....",
                labelText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.0),),
                fillColor: Colors.grey.shade300,
                filled: true,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {},
              child: Text("Next Step"),
            ),
          ],
        ),
      ),
    );
  }
}
