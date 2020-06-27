import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_demo/views/custom_item_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listaDePersonas = [
      'juan',
      'eduardo',
      'laura',
      'alex',
      'ruben',
      'ramon'
    ];
    return Container(
      child: Material(
        child: CupertinoPageScaffold(
          // navigationBar: CupertinoNavigationBar(
          //   middle: Text('Cupertino App Bar'),
          //),
          child: CustomScrollView(
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('ListDemoApp'),
              ),
              SliverList(
                delegate: SliverChildListDelegate(<Widget>[
                  Card(
                    child: ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text('data'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text('data'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text('data'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                  ),
                ])),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) {
                    return CustomItemList(
                      titulo: listaDePersonas[index]);
                  },
                  childCount: listaDePersonas.length,
                ),
              )
              // SliverFillRemaining(
              //   child:Center(child: Text('Hola mundo'),)
              // )
            ],
          )),
      ));
  }
}
