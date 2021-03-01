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
    docker: "quay.io/biocontainers/simka:1.5.3--he513fc3_0"
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