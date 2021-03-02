version 1.0

task SimkaCountProcess {
  input {
    String nohup
    String prog
    String args
  }
  command <<<
    simkaCountProcess \
      ~{nohup} \
      ~{prog} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nohup: ""
    prog: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}