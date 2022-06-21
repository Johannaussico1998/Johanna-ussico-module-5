import 'package:flutter/material.dart';
class  signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("sign up"),
        centerTitle: true,
      ),
      body: Column(
      children: <Widget>[
      Container(alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Please fill in the details below to sign up',
            style: TextStyle(fontSize: 30),
          )),
        Container(
          padding: const EdgeInsets.all(10),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText:'name',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText:'surname',
            ),
          ),
        ),
      Container(
        padding: const EdgeInsets.all(10),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
           border: OutlineInputBorder(),
          labelText:'username',
       ),
      ),
    ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText:'E-mail',
            ),
          ),
        ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Create Password',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Confirm Password',
          ),
        ),
      ),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(20,10,20,10),
            child: ElevatedButton(
              style:ElevatedButton.styleFrom(
                primary:Colors.deepPurple,
              ),
              child: const Text('sign up'),
              onPressed: () {

              },
            )),
        ],
      ),
    );
  }
}
