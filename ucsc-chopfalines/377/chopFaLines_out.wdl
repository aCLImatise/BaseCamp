version 1.0

task ChopFaLinesOut.fa {
  input {
    String? inInFa
    String? outOutFa
  }
  command <<<
    chopFaLines out.fa \
      ~{inInFa} \
      ~{outOutFa}
  >>>
}