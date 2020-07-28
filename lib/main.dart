import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var grid = ["a", "b", "c", "d", "e", "f",];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView'),
            ),
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (index >= grid.length) {
                    grid.addAll(["a", "b", "c", "d", "e", "f",]);
                  }
                  return _photoItem(grid[index]);
                }
            )
        )
    );
  }

  Widget _photoItem(String image) {
    var assetsImage = "images/" + image + ".jpg";
    return Container(
      child: Image.asset(assetsImage, fit: BoxFit.cover,),
    );
  }
}
