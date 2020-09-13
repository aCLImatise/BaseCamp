version 1.0

task Khistsh {
  input {
    String in
  }
  command <<<
    khist_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}