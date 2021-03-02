version 1.0

task BrassINpInpl {
  input {
    String at
  }
  command <<<
    brassI_np_in_pl \
      ~{at}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    at: ""
  }
  output {
    File out_stdout = stdout()
  }
}