version 1.0

task Mccortex {
  input {
    String k
    String? cmd
  }
  command <<<
    mccortex \
      ~{k} \
      ~{cmd}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    k: ""
    cmd: ""
  }
  output {
    File out_stdout = stdout()
  }
}