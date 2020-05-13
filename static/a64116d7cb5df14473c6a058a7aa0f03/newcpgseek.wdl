version 1.0

task Newcpgseek {
  input {
    Boolean scoreScore
  }
  command <<<
    newcpgseek \
      ~{true="-score" false="" scoreScore}
  >>>
}