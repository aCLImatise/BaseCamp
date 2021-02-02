version 1.0

task PslToBed {
  input {
    String psl
  }
  command <<<
    pslToBed \
      ~{psl}
  >>>
  parameter_meta {
    psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}