class marcadores{
  double _lat;
  double _log;

  marcadores(this._lat, this._log);

  double get lat => _lat;

  set lat(double value) {
    _lat = value;
  }

  double get log => _log;

  set log(double value) {
    _log = value;
  }


}