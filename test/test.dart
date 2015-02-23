import "package:ascii_type/ascii_type.dart";
import "package:charcode/ascii.dart" as charcode;
import "package:unittest/unittest.dart";

void main() {
  test("Ascii functions.", () {
    for (var c = 0; c < 128; c++) {
      switch (c) {
        case charcode.$nul:
        case charcode.$soh:
        case charcode.$stx:
        case charcode.$etx:
        case charcode.$eot:
        case charcode.$enq:
        case charcode.$ack:
        case charcode.$bel:
        case charcode.$bs:
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
        case charcode.$ht:
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
        case charcode.$lf:
        case charcode.$vt:
        case charcode.$ff:
        case charcode.$cr:
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
        case charcode.$so:
        case charcode.$si:
        case charcode.$dle:
        case charcode.$dc1:
        case charcode.$dc2:
        case charcode.$dc3:
        case charcode.$dc4:
        case charcode.$nak:
        case charcode.$syn:
        case charcode.$etb:
        case charcode.$can:
        case charcode.$em:
        case charcode.$sub:
        case charcode.$esc:
        case charcode.$fs:
        case charcode.$gs:
        case charcode.$rs:
        case charcode.$us:
        case charcode.$del:
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
        case charcode.$space:
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
        case charcode.$exclamation:
        case charcode.$quot:
        case charcode.$quote:
        case charcode.$double_quote:
        case charcode.$quotation:
        case charcode.$hash:
        case charcode.$$:
        case charcode.$dollar:
        case charcode.$percent:
        case charcode.$amp:
        case charcode.$ampersand:
        case charcode.$apos:
        case charcode.$apostrophe:
        case charcode.$single_quote:
        case charcode.$lparen:
        case charcode.$open_paren:
        case charcode.$open_parenthesis:
        case charcode.$rparen:
        case charcode.$close_paren:
        case charcode.$close_parenthesis:
        case charcode.$asterisk:
        case charcode.$plus:
        case charcode.$comma:
        case charcode.$minus:
        case charcode.$dash:
        case charcode.$dot:
        case charcode.$fullstop:
        case charcode.$slash:
        case charcode.$solidus:
        case charcode.$division:
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
        case charcode.$0:
        case charcode.$1:
        case charcode.$2:
        case charcode.$3:
        case charcode.$4:
        case charcode.$5:
        case charcode.$6:
        case charcode.$7:
        case charcode.$8:
        case charcode.$9:
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
        case charcode.$colon:
        case charcode.$semicolon:
        case charcode.$lt:
        case charcode.$less_than:
        case charcode.$langle:
        case charcode.$open_angle:
        case charcode.$equal:
        case charcode.$gt:
        case charcode.$greater_than:
        case charcode.$rangle:
        case charcode.$close_angle:
        case charcode.$question:
        case charcode.$at:
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
        case charcode.$A:
        case charcode.$B:
        case charcode.$C:
        case charcode.$D:
        case charcode.$E:
        case charcode.$F:
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
        case charcode.$G:
        case charcode.$H:
        case charcode.$I:
        case charcode.$J:
        case charcode.$K:
        case charcode.$L:
        case charcode.$M:
        case charcode.$N:
        case charcode.$O:
        case charcode.$P:
        case charcode.$Q:
        case charcode.$R:
        case charcode.$S:
        case charcode.$T:
        case charcode.$U:
        case charcode.$V:
        case charcode.$W:
        case charcode.$X:
        case charcode.$Y:
        case charcode.$Z:
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
        case charcode.$lbracket:
        case charcode.$open_bracket:
        case charcode.$backslash:
        case charcode.$rbracket:
        case charcode.$close_bracket:
        case charcode.$circumflex:
        case charcode.$caret:
        case charcode.$hat:
        case charcode.$_:
        case charcode.$underscore:
        case charcode.$underline:
        case charcode.$backquote:
        case charcode.$grave:
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
        case charcode.$a:
        case charcode.$b:
        case charcode.$c:
        case charcode.$d:
        case charcode.$e:
        case charcode.$f:
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
        case charcode.$g:
        case charcode.$h:
        case charcode.$i:
        case charcode.$j:
        case charcode.$k:
        case charcode.$l:
        case charcode.$m:
        case charcode.$n:
        case charcode.$o:
        case charcode.$p:
        case charcode.$q:
        case charcode.$r:
        case charcode.$s:
        case charcode.$t:
        case charcode.$u:
        case charcode.$v:
        case charcode.$w:
        case charcode.$x:
        case charcode.$y:
        case charcode.$z:
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
        case charcode.$lbrace:
        case charcode.$open_brace:
        case charcode.$pipe:
        case charcode.$bar:
        case charcode.$rbrace:
        case charcode.$close_brace:
        case charcode.$tilde:
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
        case 0x7f:
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
