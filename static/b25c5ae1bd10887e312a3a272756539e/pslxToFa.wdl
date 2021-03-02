version 1.0

task PslxToFa {
  input {
    String in_dot_psl
  }
  command <<<
    pslxToFa \
      ~{in_dot_psl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}