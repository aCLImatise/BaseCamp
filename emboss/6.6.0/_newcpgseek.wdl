version 1.0

task _newcpgseek {
  input {
    Boolean scoreScore
  }
  command <<<
    _newcpgseek \
      ~{true="-score" false="" scoreScore}
  >>>
}