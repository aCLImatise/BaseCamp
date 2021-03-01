version 1.0

task PslToBigPsl {
  input {
    File file_dot_psl
    String stdout
  }
  command <<<
    pslToBigPsl \
      ~{file_dot_psl} \
      ~{stdout}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_dot_psl: ""
    stdout: ""
  }
  output {
    File out_stdout = stdout()
  }
}