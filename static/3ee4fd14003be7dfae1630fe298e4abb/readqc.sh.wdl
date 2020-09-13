version 1.0

task Readqcsh {
  input {
    String in
  }
  command <<<
    readqc_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}