// To parse this JSON data, do
//
//     final myWatchlist = myWatchlistFromJson(jsonString);

import 'dart:convert';

List<MyWatchlist> myWatchlistFromJson(String str) => List<MyWatchlist>.from(json.decode(str).map((x) => MyWatchlist.fromJson(x)));

String myWatchlistToJson(List<MyWatchlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchlist {
    MyWatchlist({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model model;
    int pk;
    Fields fields;

    factory MyWatchlist.fromJson(Map<String, dynamic> json) => MyWatchlist(
        model: modelValues.map[json["model"]],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.deskripsi,
    });

    Watched watched;
    Title title;
    String rating;
    ReleaseDate releaseDate;
    Deskripsi deskripsi;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: watchedValues.map[json["watched"]],
        title: titleValues.map[json["title"]],
        rating: json["rating"],
        releaseDate: releaseDateValues.map[json["release_date"]],
        deskripsi: deskripsiValues.map[json["deskripsi"]],
    );

    Map<String, dynamic> toJson() => {
        "watched": watchedValues.reverse[watched],
        "title": titleValues.reverse[title],
        "rating": rating,
        "release_date": releaseDateValues.reverse[releaseDate],
        "deskripsi": deskripsiValues.reverse[deskripsi],
    };
}

enum Deskripsi { BAGUS }

final deskripsiValues = EnumValues({
    "bagus": Deskripsi.BAGUS
});

enum ReleaseDate { THE_08102003 }

final releaseDateValues = EnumValues({
    "08/10/2003": ReleaseDate.THE_08102003
});

enum Title { KIMI_NO_NAWA }

final titleValues = EnumValues({
    "Kimi No Nawa": Title.KIMI_NO_NAWA
});

enum Watched { YES }

final watchedValues = EnumValues({
    "yes": Watched.YES
});

enum Model { MYWATCHLIST_BARANG_MY_WATCH_LIST }

final modelValues = EnumValues({
    "mywatchlist.barangMyWatchList": Model.MYWATCHLIST_BARANG_MY_WATCH_LIST
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
