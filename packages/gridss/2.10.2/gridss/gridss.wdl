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
  runtime {
    docker: "quay.io/biocontainers/gridss:2.10.2--0"
  }
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