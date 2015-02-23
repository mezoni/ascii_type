import "package:ascii/ascii.dart";
import "package:ascii_type/ascii_type.dart";
import "package:unittest/unittest.dart";

void main() {
  test("Ascii functions.", () {
    for (var c = 0; c < 128; c++) {
      switch (c) {
        case Ascii.NUL:
        case Ascii.SOH:
        case Ascii.STX:
        case Ascii.ETX:
        case Ascii.EOT:
        case Ascii.ENQ:
        case Ascii.ACK:
        case Ascii.BEL:
        case Ascii.BS:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), true, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), false, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), false, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.HT:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), true, reason: "isblank($c)");
          expect(iscntrl(c), true, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), false, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), false, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), true, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.LF:
        case Ascii.VT:
        case Ascii.FF:
        case Ascii.CR:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), true, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), false, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), false, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), true, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.SO:
        case Ascii.SI:
        case Ascii.DLE:
        case Ascii.DC1:
        case Ascii.DC2:
        case Ascii.DC3:
        case Ascii.DC4:
        case Ascii.NAK:
        case Ascii.SYN:
        case Ascii.ETB:
        case Ascii.CAN:
        case Ascii.EM:
        case Ascii.SUB:
        case Ascii.ESC:
        case Ascii.FS:
        case Ascii.GS:
        case Ascii.RS:
        case Ascii.US:
        case Ascii.DEL:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), true, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), false, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), false, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.SPACE:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), true, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), false, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), true, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.EXCLAMATION_MARK:
        case Ascii.QUOTATION_MARK:
        case Ascii.NUMBER_SIGN:
        case Ascii.DOLLAR_SIGN:
        case Ascii.PERCENT_SIGN:
        case Ascii.AMPERSAND:
        case Ascii.APOSTROPHE:
        case Ascii.LEFT_PARENTHESES:
        case Ascii.RIGHT_PARENTHESES:
        case Ascii.ASTERISK:
        case Ascii.PLUS_SIGN:
        case Ascii.COMMA:
        case Ascii.MINUS_SIGN:
        case Ascii.PERIOD:
        case Ascii.SLASH:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), true, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.NUMBER_0:
        case Ascii.NUMBER_1:
        case Ascii.NUMBER_2:
        case Ascii.NUMBER_3:
        case Ascii.NUMBER_4:
        case Ascii.NUMBER_5:
        case Ascii.NUMBER_6:
        case Ascii.NUMBER_7:
        case Ascii.NUMBER_8:
        case Ascii.NUMBER_9:
          expect(isalnum(c), true, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), true, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), true, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.COLON:
        case Ascii.SEMICOLON:
        case Ascii.LESS_THAN_SIGN:
        case Ascii.EQUALS_SIGN:
        case Ascii.GREATER_THAN_SIGN:
        case Ascii.QUESTION_MARK:
        case Ascii.AT_SIGN:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), true, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.A:
        case Ascii.B:
        case Ascii.C:
        case Ascii.D:
        case Ascii.E:
        case Ascii.F:
          expect(isalnum(c), true, reason: "isalnum($c)");
          expect(isalpha(c), true, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), true, reason: "isupper($c)");
          expect(isxdigit(c), true, reason: "isxdigit($c)");
          expect(tolower(c), c + 32, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.G:
        case Ascii.H:
        case Ascii.I:
        case Ascii.J:
        case Ascii.K:
        case Ascii.L:
        case Ascii.M:
        case Ascii.N:
        case Ascii.O:
        case Ascii.P:
        case Ascii.Q:
        case Ascii.R:
        case Ascii.S:
        case Ascii.T:
        case Ascii.U:
        case Ascii.V:
        case Ascii.W:
        case Ascii.X:
        case Ascii.Y:
        case Ascii.Z:
          expect(isalnum(c), true, reason: "isalnum($c)");
          expect(isalpha(c), true, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), true, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c + 32, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.LEFT_SQUARE_BRACKET:
        case Ascii.BACKSLASH:
        case Ascii.RIGHT_SQUARE_BRACKET:
        case Ascii.CARET:
        case Ascii.UNDERSCORE:
        case Ascii.GRAVE_ACCENT:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), true, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.a:
        case Ascii.b:
        case Ascii.c:
        case Ascii.d:
        case Ascii.e:
        case Ascii.f:
          expect(isalnum(c), true, reason: "isalnum($c)");
          expect(isalpha(c), true, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), true, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), true, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c - 32, reason: "toupper($c)");
          break;
        case Ascii.g:
        case Ascii.h:
        case Ascii.i:
        case Ascii.j:
        case Ascii.k:
        case Ascii.l:
        case Ascii.m:
        case Ascii.n:
        case Ascii.o:
        case Ascii.p:
        case Ascii.q:
        case Ascii.r:
        case Ascii.s:
        case Ascii.t:
        case Ascii.u:
        case Ascii.v:
        case Ascii.w:
        case Ascii.x:
        case Ascii.y:
        case Ascii.z:
          expect(isalnum(c), true, reason: "isalnum($c)");
          expect(isalpha(c), true, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), true, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c - 32, reason: "toupper($c)");
          break;
        case Ascii.LEFT_CURLY_BRACKET:
        case Ascii.VERTICAL_BAR:
        case Ascii.RIGHT_CURLY_BRACKET:
        case Ascii.TILDE:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), false, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), true, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), true, reason: "isprint($c)");
          expect(ispunct(c), true, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
        case Ascii.DEL:
          expect(isalnum(c), false, reason: "isalnum($c)");
          expect(isalpha(c), false, reason: "issalpha($c)");
          expect(isblank(c), false, reason: "isblank($c)");
          expect(iscntrl(c), true, reason: "iscntrl($c)");
          expect(isdigit(c), false, reason: "isdigit($c)");
          expect(isgraph(c), false, reason: "isgraph($c)");
          expect(islower(c), false, reason: "islower($c)");
          expect(isprint(c), false, reason: "isprint($c)");
          expect(ispunct(c), false, reason: "ispunct($c)");
          expect(isspace(c), false, reason: "isspace($c)");
          expect(isupper(c), false, reason: "isupper($c)");
          expect(isxdigit(c), false, reason: "isxdigit($c)");
          expect(tolower(c), c, reason: "tolower($c)");
          expect(toupper(c), c, reason: "toupper($c)");
          break;
      }
    }
  });
}
