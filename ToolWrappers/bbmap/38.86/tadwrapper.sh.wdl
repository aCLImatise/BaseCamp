version 1.0

task Tadwrappersh {
  input {
    String in
  }
  command <<<
    tadwrapper_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}