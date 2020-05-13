version 1.0

task _cpgreport {
  input {
    Boolean scoreScore
  }
  command <<<
    _cpgreport \
      ~{true="-score" false="" scoreScore}
  >>>
}