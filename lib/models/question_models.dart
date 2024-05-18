class Dare {
  int? id;
  String? name;

  Dare({this.id, this.name});

  Dare.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Truth {
  int? id;
  String? name;

  Truth({this.id, this.name});

  Truth.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Data {
  int? id;
  String? title;
  List<Dare>? dare;
  List<Truth>? truth;
  Data({this.id, this.title, this.dare, this.truth});
  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    if (json['dare'] != null) {
      dare = <Dare>[];
      json['dare'].forEach((v) {
        dare!.add(Dare.fromJson(v));
      });
    }
    if (json['truth'] != null) {
      truth = <Truth>[];
      json['truth'].forEach((v) {
        truth!.add(Truth.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['dare'] = dare != null ? dare!.map((v) => v?.toJson()).toList() : null;
    data['truth'] =
        truth != null ? truth!.map((v) => v?.toJson()).toList() : null;
    return data;
  }
}
