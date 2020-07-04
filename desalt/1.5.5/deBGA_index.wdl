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
  parameter_meta {
    reference_dot_fast_a: ""
    index_route: ""
  }
}