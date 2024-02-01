import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: TextButton(
                  onPressed: () async {
                    await _launchURL();
                  },
                  child: const Text(
                    "Navigate",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

_launchURL() async {
  final Uri url = Uri.parse('https://abgeo.dev');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
