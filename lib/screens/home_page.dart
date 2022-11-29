import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0x00F1F4F8),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 1,
            decoration: const BoxDecoration(
              color: Color(0xFF1A54B8),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(1, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 1,
              decoration: const BoxDecoration(
                color: Color(0xFFFC2641),
              ),
            ),
          ),
          const Align(
            alignment: AlignmentDirectional(-0.01, -0.82),
            child: Text("Pay The Price"),
          ),
          Align(
            alignment: const AlignmentDirectional(1.01, 0.94),
            child: InkWell(
              onTap: () async {
                await canLaunchUrlString('https://paythepricegame.com/');
              },
              child: Image.asset('images/ptp.png')
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.67, 0.49),
            child: InkWell(
              onTap: () async {
                await canLaunchUrlString('https://paythepricegame.com/');
              },
              child: const Text("Buy Here!"),
            ),
          ),
          const Align(
            alignment: AlignmentDirectional(-0.9, 0.91),
            child: Text('Created By Santagato Studios'),
          ),
          const Align(
            alignment: AlignmentDirectional(-0.89, 0.05),
            child: Text('Play!'),
          ),
        ]),
      ),
      // const Text('Settings'),
      // Text('Cards'),

      // Text('Trivia party game with hilarious consequences'),
    );
  }
}
