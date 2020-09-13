version 1.0

task Countgcsh {
  input {
    String in
  }
  command <<<
    countgc_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}