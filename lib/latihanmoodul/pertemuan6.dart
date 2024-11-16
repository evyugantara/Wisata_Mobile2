import 'package:flutter/material.dart';

class Pertemuan6 extends StatelessWidget {
  const Pertemuan6({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pertemuan 6 Lidt View'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'ListView',
            ),
            Tab(
              text: 'ListView.Builder',
            ),
            Tab(
              text: 'ListView.sparted',
            ),
          ]),
        ),
        body: TabBarView(children: [
          ContohListViewGuys(),
          ContohListViewBuilder(),
          ContohListViewSparated(),
        ]),
      ),
    );
  }
}

class ContohListViewGuys extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewGuys({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: numberList.map((int number) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ContohListViewBuilder extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.blue),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        });
  }
}

class ContohListViewSparated extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewSparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.blue),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 20,
            color: Colors.amber,
          );
        },
        itemCount: numberList.length);
  }
}
