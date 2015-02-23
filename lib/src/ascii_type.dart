part of ascii_type;

final List<int> _lookup = _generateLookup();

const int _ALNUM = 0x1;

const int _ALPHA = _ALNUM << 1;

const int _BLANK = _ALPHA << 1;

const int _CNTRL = _BLANK << 1;

const int _DIGIT = _CNTRL << 1;

const int _GRAPH = _DIGIT << 1;

const int _LOWER = _GRAPH << 1;

const int _PRINT = _LOWER << 1;

const int _PUNCT = _PRINT << 1;

const int _SPACE = _PUNCT << 1;

const int _UPPER = _SPACE << 1;

const int _XDIGIT = _UPPER << 1;

List<int> _generateLookup() {
  var result = new List<int>.filled(128, 0);
  for (var i = Ascii.NUL; i <= Ascii.US; i++) {
    result[i] |= _CNTRL;
  }

  result[Ascii.HT] |= _BLANK | _SPACE;
  result[Ascii.LF] |= _SPACE;
  result[Ascii.VT] |= _SPACE;
  result[Ascii.FF] |= _SPACE;
  result[Ascii.CR] |= _SPACE;
  result[Ascii.SPACE] |= _BLANK | _PRINT | _SPACE;
  for (var i = Ascii.EXCLAMATION_MARK; i <= Ascii.SLASH; i++) {
    result[i] |= _GRAPH | _PRINT | _PUNCT;
  }

  for (var i = Ascii.NUMBER_0; i <= Ascii.NUMBER_9; i++) {
    result[i] |= _ALNUM | _DIGIT | _GRAPH | _PRINT | _XDIGIT;
  }

  for (var i = Ascii.COLON; i <= Ascii.AT_SIGN; i++) {
    result[i] |= _GRAPH | _PRINT | _PUNCT;
  }

  for (var i = Ascii.A; i <= Ascii.F; i++) {
    result[i] |= _ALNUM | _ALPHA | _GRAPH | _PRINT | _UPPER | _XDIGIT;
  }

  for (var i = Ascii.G; i <= Ascii.Z; i++) {
    result[i] |= _ALNUM | _ALPHA | _GRAPH | _PRINT | _UPPER;
  }

  for (var i = Ascii.LEFT_SQUARE_BRACKET; i <= Ascii.GRAVE_ACCENT; i++) {
    result[i] |= _GRAPH | _PRINT | _PUNCT;
  }

  for (var i = Ascii.a; i <= Ascii.f; i++) {
    result[i] |= _ALNUM | _ALPHA | _GRAPH | _LOWER | _PRINT | _XDIGIT;
  }

  for (var i = Ascii.g; i <= Ascii.z; i++) {
    result[i] |= _ALNUM | _ALPHA | _GRAPH | _LOWER | _PRINT;
  }

  for (var i = Ascii.LEFT_CURLY_BRACKET; i <= Ascii.TILDE; i++) {
    result[i] |= _GRAPH | _PRINT | _PUNCT;
  }

  result[Ascii.DEL] |= _CNTRL;
  return result;
}

/**
 *  Returns true if its argument is a numeric digit or a letter of the
 *  alphabet. Otherwise, false is returned.
 */
bool isalnum(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _ALNUM) != 0;
}

/**
 * Returns true if its argument is a letter of the alphabet. Otherwise, false
 * is returned.
 */
bool isalpha(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _ALPHA) != 0;
}

/**
 * Returns true if its argument is a single space or tab character. Otherwise,
 * false is returned.
 */
bool isblank(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _BLANK) != 0;
}

/**
 * Returns true if its argument is a control character (between 0 and 0x1F or
 * equal to 0x7F). Otherwise, false is returned.
 */
bool iscntrl(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _CNTRL) != 0;
}

/**
 * Returns true if its argument is a digit between 0 and 9. Otherwise, false is
 * returned.
 */
bool isdigit(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _DIGIT) != 0;
}

/**
 * Returns true if its argument is any printable character other than a space
 * Otherwise, false is returned.
 */
bool isgraph(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _GRAPH) != 0;
}

/**
 * Returns true if its argument is an lowercase letter (i.e. a-z). Otherwise,
 * false is returned.
 */
bool islower(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _LOWER) != 0;
}

/**
 * Returns true if its argument is a printable character (including a
 * space). Otherwise, false is returned.
 */
bool isprint(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _PRINT) != 0;
}

/**
 * Returns true if its argument is a printing character but neither
 * alphanumeric nor a space. Otherwise, false is returned.
 */
bool ispunct(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _PUNCT) != 0;
}

/**
 * Returns true if its argument is some sort of space (i.e. single space, tab,
 * vertical tab, form feed, carriage return, or newline). Otherwise, false is
 * returned.
 */
bool isspace(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _SPACE) != 0;
}

/**
 * Returns true if its argument is an uppercase letter (i.e. A-Z). Otherwise,
 * false is returned.
 */
bool isupper(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _UPPER) != 0;
}

/**
 * Returns true if its argument is a hexadecimal digit (i.e. A-F, a-f, or 0-9).
 * Otherwise, false is returned.
 */
bool isxdigit(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return false;
  }

  return (_lookup[c] & _XDIGIT) != 0;
}

/**
 * Converts ASCII character to lowercase.
 */
int tolower(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return c;
  }

  if ((_lookup[c] & _UPPER) != 0) {
    return c + 32;
  }

  return c;
}

/**
 * Converts ASCII character to uppercase.
 */
int toupper(int c) {
  if (c == null) {
    throw new ArgumentError.notNull("c");
  }

  if (c < 0 || c > 127) {
    return c;
  }

  if ((_lookup[c] & _LOWER) != 0) {
    return c - 32;
  }

  return c;
}
