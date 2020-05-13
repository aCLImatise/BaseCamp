version 1.0

task Blast2sam.pl {
  input {
    String? inInBlastn
  }
  command <<<
    blast2sam.pl \
      ~{inInBlastn}
  >>>
}