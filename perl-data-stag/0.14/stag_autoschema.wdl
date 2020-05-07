version 1.0

task StagAutoschema.pl {
  input {
    Boolean pP
    Boolean dtdDtd
    Boolean wW
  }
  command <<<
    stag-autoschema.pl \
      ~{true="-p" false="" pP} \
      ~{true="-dtd" false="" dtdDtd} \
      ~{true="-w" false="" wW}
  >>>
}