version 1.0

task Cpgreport {
  input {
    Boolean scoreScore
  }
  command <<<
    cpgreport \
      ~{true="-score" false="" scoreScore}
  >>>
}