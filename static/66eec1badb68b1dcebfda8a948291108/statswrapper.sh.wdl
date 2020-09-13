version 1.0

task Statswrappersh {
  input {
    String in
  }
  command <<<
    statswrapper_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}