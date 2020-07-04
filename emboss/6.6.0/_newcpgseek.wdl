version 1.0

task _newcpgseek {
  input {
    Boolean? score
  }
  command <<<
    _newcpgseek \
      ~{true="-score" false="" score}
  >>>
  parameter_meta {
    score: "integer    [17] CpG score (Integer from 1 to 200)"
  }
}