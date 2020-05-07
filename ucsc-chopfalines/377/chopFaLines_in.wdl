version 1.0

task ChopFaLinesIn.fa {
  input {
    String? outOutFa
  }
  command <<<
    chopFaLines in.fa \
      ~{outOutFa}
  >>>
}