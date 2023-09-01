import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:sliding_panel_app/category.dart';
import 'package:sliding_panel_app/scroll.dart';

void main() {
  runApp(MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(600, 450);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Sliding_panel";
    win.show();
  });
}

const borderColor = Color(0xFF805306);

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final CategoryData itemData = CategoryData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      home: Scaffold(
        body: WindowBorder(
          color: borderColor,
          width: 1,
          child: SlidingPanelApp(),
        ),
      ),
    );
  }
}

class SlidingPanelApp extends StatefulWidget {
  @override
  _SlidingPanelAppState createState() => _SlidingPanelAppState();
}

class _SlidingPanelAppState extends State<SlidingPanelApp> {
  double _sideSectionWidth = 100.0;
  double _itemSideHeight = 400.0;
  final double minSideSectionWidth =
      100.0; // Minimum width for the side section
  final double minItemSectionWidth =
      100.0; // Minimum width for the item section
  final double minHeaderHeight = 100.0;
  final double minFooterHeight = 250;

  static const backgroundEndColor = Color(0xFFF6A00C);
  static int increaseSize = 2;
  final CategoryData categoryData = CategoryData();
  final ScrollController _sideListViewController = ScrollController();
  final ScrollController _itemListViewController = ScrollController();
  int categoriesSelectedIndex = 0;
  int imageSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: _sideSectionWidth,
              color: Color(0xFF202020),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WindowTitleBarBox(child: MoveWindow()),
                  Expanded(
                    child: ListView.builder(
                      controller: _sideListViewController,
                      itemCount: categoryData.CategoryListFirst.length,
                      itemBuilder: (context, index) {
                        return Container(
                          color: categoryData.CategoryListFirst[index].selected
                              ? Colors.blueAccent
                              : Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 0, bottom: 0),
                            child: GestureDetector(
                              onTap: () {
                                categoryData.selectcat(
                                    categoryData.CategoryListFirst[index].id);

                                setState(() {
                                  categoriesSelectedIndex = index;
                                });
                              },
                              child: Container(
                                height: 50,
                                child: Row(
                                  children: [
                                    categoryData.CategoryListFirst[index].icon,
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        categoryData
                                            .CategoryListFirst[index].name,
                                        style: TextStyle(color: Colors.white),
                                        softWrap: true,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: _sideSectionWidth,
            top: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  _sideSectionWidth = (_sideSectionWidth + details.delta.dx)
                      .clamp(minSideSectionWidth, double.infinity);
                });
              },
              onHorizontalDragEnd: (details) {
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.resizeColumn,
                child: Container(
                  color: Colors.grey.withOpacity(0.9),
                ),
              ),
            ),
          ),
          Positioned(
            left: _sideSectionWidth + increaseSize,
            top: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              child: Container(
                color: Color(0xFF202020),
                width: _sideSectionWidth.clamp(
                    minItemSectionWidth, double.infinity),
                child: Stack(
                  children: [
                    Positioned(
                      top: _itemSideHeight,
                      left: 0,
                      right: 0,
                      child: GestureDetector(
                        onVerticalDragUpdate: (details) {
                          setState(() {
                            _itemSideHeight =
                                (_itemSideHeight + details.delta.dy)
                                    .clamp(minHeaderHeight, double.infinity);
                          });
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.resizeRow,
                          child: Container(
                            height: 3,
                            color: Colors.grey.withOpacity(0.9),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: _itemSideHeight.clamp(
                          minFooterHeight, double.infinity),
                      width: double.infinity,
                      color: Color(0xFF202020),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.network(categoryData
                                  .CategoryListFirst[categoriesSelectedIndex]
                                  .item
                                  .image[imageSelectedIndex]
                                  .name),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 100, top: 20),
                              child: Center(
                                child: SizedBox(
                                  height: 100,
                                  child: ListView(
                                    scrollDirection: Axis
                                        .horizontal, // Set scroll direction to horizontal
                                    children: List.generate(
                                        categoryData
                                            .CategoryListFirst[
                                                categoriesSelectedIndex]
                                            .item
                                            .image
                                            .length,
                                        (index) => GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  imageSelectedIndex = index;
                                                });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Container(
                                                  child: Image.network(categoryData
                                                      .CategoryListFirst[
                                                          categoriesSelectedIndex]
                                                      .item
                                                      .image[index]
                                                      .name),
                                                ),
                                              ),
                                            )),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: _itemSideHeight + 3),
                      height: double.infinity,
                      width: double.infinity,
                      color: Color(0xFF202020),
                      child: Text(
                        categoryData.CategoryListFirst[categoriesSelectedIndex]
                            .item.image[imageSelectedIndex].detail,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
