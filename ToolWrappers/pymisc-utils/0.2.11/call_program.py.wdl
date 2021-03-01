version 1.0

task CallProgrampy {
  input {
    String cmd
  }
  command <<<
    call_program_py \
      ~{cmd}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cmd: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}