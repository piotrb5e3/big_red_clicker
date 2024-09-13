import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Big Red Clicker by baka"),
            const SizedBox(height: 50),
            RichText(
              text: TextSpan(
                text: "SOURCE",
                style: const TextStyle(color: Colors.purple, decoration: TextDecoration.underline),
                recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  var url = Uri.parse('https://github.com/piotrb5e3/big_red_clicker');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url); // Open the web page
                  } else {
                    Fluttertoast.showToast(msg: "Could not open the web page :feelsbadman:");
                  }
                }
              )
            )
          ]
        )
      )
    );
  }

}