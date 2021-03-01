version 1.0

task PslToBed {
  input {
    String psl
  }
  command <<<
    pslToBed \
      ~{psl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}