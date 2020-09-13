version 1.0

task BrassINpInpl {
  input {
    String at
  }
  command <<<
    brassI_np_in_pl \
      ~{at}
  >>>
  parameter_meta {
    at: ""
  }
  output {
    File out_stdout = stdout()
  }
}