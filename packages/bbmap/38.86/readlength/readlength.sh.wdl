version 1.0

task Readlengthsh {
  input {
    String in
  }
  command <<<
    readlength_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}