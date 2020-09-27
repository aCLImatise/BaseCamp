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
  parameter_meta {
    k: ""
    cmd: ""
  }
  output {
    File out_stdout = stdout()
  }
}