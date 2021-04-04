class Note{
  int _id;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String _title;
  String _description;
  int _priority;
  String _date;


  Note(this._title, this._date, this._priority, [this._description]);

  Note.withId(this._id, this._title, this._date, this._priority, [this._description]);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  int get priority => _priority;

  set priority(int value) {
    _priority = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  //------------------------------------------------------------------------
  Map<String, dynamic> toMap(){
    var map = Map<String,dynamic>();
    map["title"]=_title;
    map["description"]=_description;
    map["priority"]=_priority;
    map["date"]=_date;

    if(_id!=null){
      map["id"]=_id;
    }

    return map;
  }

  Note.fromObject(dynamic o){
    this._id = o["id"];
    this._title = o["title"];
    this._description = o["description"];
    this._priority = o["priority"];
    this._date = o["date"];
  }
}