version 1.0

task Checkdb {
  input {
    Boolean vV
    Boolean nN
  }
  command <<<
    checkdb \
      ~{true="-V" false="" vV} \
      ~{true="-N" false="" nN}
  >>>
}