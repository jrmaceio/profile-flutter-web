import 'dart:convert';

class Project {
  String title;
  String description;
  String tag;
  String picture;
  String github;
  String facebook;
  String youtube;
  String playstore;
  String itchio;
  String medium;
  String paper;
  String applestore;
  
  Project({
    this.title,
    this.description,
    this.tag,
    this.picture,
    this.github,
    this.facebook,
    this.youtube,
    this.playstore,
    this.itchio,
    this.medium,
    this.paper,
    this.applestore,
  });

  Project copyWith({
    String title,
    String description,
    String tag,
    String picture,
    String github,
    String facebook,
    String youtube,
    String playstore,
    String itchio,
    String medium,
    String paper,
    String applestore,
  }) {
    return Project(
      title: title ?? this.title,
      description: description ?? this.description,
      tag: tag ?? this.tag,
      picture: picture ?? this.picture,
      github: github ?? this.github,
      facebook: facebook ?? this.facebook,
      youtube: youtube ?? this.youtube,
      playstore: playstore ?? this.playstore,
      itchio: itchio ?? this.itchio,
      medium: medium ?? this.medium,
      paper: paper ?? this.paper,
      applestore: applestore ?? this.applestore,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'tag': tag,
      'picture': picture,
      'github': github,
      'facebook': facebook,
      'youtube': youtube,
      'playstore': playstore,
      'itchio': itchio,
      'medium': medium,
      'paper': paper,
      'applestore': applestore,
    };
  }

  static Project fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Project(
      title: map['title'],
      description: map['description'],
      tag: map['tag'],
      picture: map['picture'],
      github: map['github'],
      facebook: map['facebook'],
      youtube: map['youtube'],
      playstore: map['playstore'],
      itchio: map['itchio'],
      medium: map['medium'],
      paper: map['paper'],
      applestore: map['applestore'],
    );
  }

  String toJson() => json.encode(toMap());

  static Project fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Project(title: $title, description: $description, tag: $tag, picture: $picture, github: $github, facebook: $facebook, youtube: $youtube, playstore: $playstore, itchio: $itchio, medium: $medium, paper: $paper, applestore: $applestore)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Project &&
        o.title == title &&
        o.description == description &&
        o.tag == tag &&
        o.picture == picture &&
        o.github == github &&
        o.facebook == facebook &&
        o.youtube == youtube &&
        o.playstore == playstore &&
        o.itchio == itchio &&
        o.medium == medium &&
        o.paper == paper &&
        o.applestore == applestore;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        tag.hashCode ^
        picture.hashCode ^
        github.hashCode ^
        facebook.hashCode ^
        youtube.hashCode ^
        playstore.hashCode ^
        itchio.hashCode ^
        medium.hashCode ^
        paper.hashCode ^
        applestore.hashCode;
  }
}
