// sndlast.pzc

PROGRAM sndlast() {

  int b;
  int result;

  b = READ_INT();
  result = (b/10) MOD 10;
  WRITELN(result);
}