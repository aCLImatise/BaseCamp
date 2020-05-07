version 1.0

task RaToLinesIn.ra {
  input {
    String? outOutTxt
  }
  command <<<
    raToLines in.ra \
      ~{outOutTxt}
  >>>
}