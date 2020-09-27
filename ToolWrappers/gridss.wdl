version 1.0

task Gridss {
  input {
    Boolean? v
    String time
    String prog
    String args
  }
  command <<<
    gridss \
      ~{time} \
      ~{prog} \
      ~{args} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
    time: ""
    prog: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}