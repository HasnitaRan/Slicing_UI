import 'package:flutter/material.dart';
import 'package:slicing_ui/screen/cakelecious.dart';
import 'package:slicing_ui/widget/navbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          color: Colors.grey,
          onPressed: () {},
        ),
        title: const Text(
          'Hazelicious',
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
        padding: const EdgeInsets.only(left: 20.0),
        children: [
          const SizedBox(height: 15.0),
          const Text(
            'Menu',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: const Color.fromRGBO(177, 156, 217, 1),
            isScrollable: true,
            labelPadding: const EdgeInsets.only(right: 25),
            unselectedLabelColor: const Color.fromRGBO(177, 156, 217, 1),
            tabs: const [
              Tab(
                child: Text(
                  'Cake Box',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Cake Slice',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Chiffon',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: const [
              CakePage(),
              CakePage(),
              CakePage(),
            ]),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(177, 156, 217, 1),
        child: const Icon(Icons.cake_outlined),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(25.0), // Sesuaikan dengan keinginan Anda
        ),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
