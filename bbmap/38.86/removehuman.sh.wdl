version 1.0

task Removehumansh {
  input {
    String in
  }
  command <<<
    removehuman_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}