version 1.0

task Newcpgseek {
  input {
    Boolean? score
  }
  command <<<
    _newcpgseek \
      ~{if (score) then "-score" else ""}
  >>>
  parameter_meta {
    score: "integer    [17] CpG score (Integer from 1 to 200)"
  }
  output {
    File out_stdout = stdout()
  }
}