version 1.0

task CheckAgpAndFaIn.fa {
  input {
    String? inInAgp
    String? inInFa
  }
  command <<<
    checkAgpAndFa in.fa \
      ~{inInAgp} \
      ~{inInFa}
  >>>
}