class Horoscope {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetail;
  final String _smallPic;
  final String _bigPic;

  get horoscopeName => this._horoscopeName;
  get horoscopeDate => this._horoscopeDate;
  get horoscopeDetail => this._horoscopeDetail;
  get smallPic => this._smallPic;
  get bigPic => this._bigPic;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._smallPic, this._bigPic);
}
