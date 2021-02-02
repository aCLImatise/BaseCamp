version 1.0

task DeSALTIndexIndexRoute {
  input {
    String de_bga
    String index
    String reference_dot_fast_a
    String index_route
  }
  command <<<
    deSALT index index_route \
      ~{de_bga} \
      ~{index} \
      ~{reference_dot_fast_a} \
      ~{index_route}
  >>>
  parameter_meta {
    de_bga: ""
    index: ""
    reference_dot_fast_a: ""
    index_route: ""
  }
  output {
    File out_stdout = stdout()
  }
}