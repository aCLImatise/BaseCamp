version 1.0

task RaToLinesOut.txt {
  input {
    String? inraInra
    String? outOutTxt
  }
  command <<<
    raToLines out.txt \
      ~{inraInra} \
      ~{outOutTxt}
  >>>
}