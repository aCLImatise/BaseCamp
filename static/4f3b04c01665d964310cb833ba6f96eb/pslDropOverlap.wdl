version 1.0

task PslDropOverlap {
  input {
    String in_dot_psl
  }
  command <<<
    pslDropOverlap \
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