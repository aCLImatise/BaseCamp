version 1.0

task Rgtviz {
  input {
    Boolean? v
  }
  command <<<
    rgt_viz \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}