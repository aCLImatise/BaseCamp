version 1.0

task Bbestsh {
  input {
    String in
  }
  command <<<
    bbest_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}