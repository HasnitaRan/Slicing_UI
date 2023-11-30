import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slicing_ui/widget/navbar_widget.dart';

class CakeDetail extends StatelessWidget {
  final String assetPath;
  final String cakeprice;
  final String cakename;

  const CakeDetail({
    Key? key,
    required this.assetPath,
    required this.cakeprice,
    required this.cakename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Pilihan',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Color.fromRGBO(177, 156, 217, 1),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Color.fromRGBO(177, 156, 217, 1),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 15.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Kue',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(177, 156, 217, 1)),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Hero(
              tag: assetPath, // Gunakan tag yang unik
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(assetPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Text(
              'Rp $cakeprice',
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(177, 156, 217, 1),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              cakename,
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 24.0,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50.0,
              child: const Text(
                'Cake ini dibuat dengan tepung pilihan kemudian disajikan dengan whipped cream',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color.fromRGBO(177, 156, 217, 1),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 30,
                      color: Colors.white70,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Pesan Via Whatsapp',
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(177, 156, 217, 1),
        child: const Icon(Icons.cake_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
