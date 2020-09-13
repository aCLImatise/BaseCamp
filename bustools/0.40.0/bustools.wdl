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
  parameter_meta {
    cmd: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}