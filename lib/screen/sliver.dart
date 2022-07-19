import 'package:flutter/material.dart';

class Sliver_S extends StatefulWidget {
  const Sliver_S({Key? key}) : super(key: key);

  @override
  State<Sliver_S> createState() => _Sliver_SState();
}

class _Sliver_SState extends State<Sliver_S> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              snap: true,
              floating: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Sliver",
                  style: TextStyle(color: Colors.black),
                ),
                centerTitle: true,
                background: Opacity(
                  opacity: 0.5,
                  child: FlutterLogo(),
                ),
              ),
            ),
            /* SliverList(
              delegate: SliverChildListDelegate(
                [
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.amber,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.blueAccent,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.cyan,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.cyanAccent,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.lightBlue,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.indigo,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),*/
            SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepPurple,
                    margin: EdgeInsets.all(10),
                  );
                },childCount: 18),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3))
          ],
        ),
      ),
    );
  }
}
