import 'package:flutter/material.dart';

import '../page/watchlist.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:counter_7/model/mywatchlist.dart';

import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/objectBudget.dart';
import 'package:counter_7/page/showDataBudget.dart';

import 'package:counter_7/page/watchlist_detail.dart';
import 'package:counter_7/page/watchlist_detail.dart';

import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';

class buildingDrawer extends StatelessWidget {
  const buildingDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ShowDataBudget()),
              );
            },
          ),
          ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                );
              },
            ),
        ],
      ),
    );
  }
}