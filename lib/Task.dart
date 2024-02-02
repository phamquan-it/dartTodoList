class  Task{
  late int _id;
  late String _name;
  late bool _status;

  Task(this._id, this._name, this._status);

  bool get status => _status;

  set status(bool value) {
    _status = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}