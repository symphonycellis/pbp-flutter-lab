import 'package:counter_7/model/mywatchlist.dart';

import 'package:flutter/material.dart';

import 'package:counter_7/page/drawer.dart';

import 'package:counter_7/main.dart';


class MyWatchlistDetailPage extends StatelessWidget {
  final MyWatchlist film;

  const MyWatchlistDetailPage({Key? key, required this.film})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: const buildingDrawer(),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Text(film.fields.title.toString(),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        leading: const Text('Release Date: ',
                          style: TextStyle(fontSize: 16),
                        ),
                        trailing: Text(film.fields.releaseDate.toString(),
                        ),
                        dense: true,
                      ),
                      ListTile(
                        leading: const Text('Rating: ',
                        ),
                        trailing: Text('${film.fields.rating} / 5',
                        ),
                        dense: true,
                      ),
                      ListTile(
                        leading: const Text('Status: ',
                        ),
                        trailing: Text( film.fields.watched ? "Watched" : "Not Watched",
                        ),
                        dense: true,
                      ),
                      ListTile(
                          title: const Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text('Review: ',
                            ),
                          ),
                          dense: true,
                          subtitle: Text(film.fields.deskripsi.toString(),
                          )),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Back",
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}