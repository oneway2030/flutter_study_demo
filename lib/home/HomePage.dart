import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Stack(
            children: <Widget>[
              Align(
                child: Container(
                  width: MediaQuery.of(context).size.width / 2 * 1.2,
                  alignment: Alignment.center,
                  child: TabBar(
                    tabs: <Widget>[
                      Tab(
                        child: Text("1"),
                      ),
                      Tab(
                        child: Text("2"),
                      ),
                      Tab(
                        child: Text("3"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
