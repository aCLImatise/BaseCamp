version 1.0

task Newcpgseek {
  input {
    Boolean? score
  }
  command <<<
    newcpgseek \
      ~{true="-score" false="" score}
  >>>
  parameter_meta {
    score: "integer    [17] CpG score (Integer from 1 to 200)"
  }
}