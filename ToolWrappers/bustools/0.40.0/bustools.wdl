version 1.0

task Bustools {
  input {
    String cmd
    String? arguments
  }
  command <<<
    bustools \
      ~{cmd} \
      ~{arguments}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cmd: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}