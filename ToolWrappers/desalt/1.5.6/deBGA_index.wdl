version 1.0

task DeBGAIndex {
  input {
    String reference_dot_fast_a
    String index_route
  }
  command <<<
    deBGA index \
      ~{reference_dot_fast_a} \
      ~{index_route}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_dot_fast_a: ""
    index_route: ""
  }
  output {
    File out_stdout = stdout()
  }
}