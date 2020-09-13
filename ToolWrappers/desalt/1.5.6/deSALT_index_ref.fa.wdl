version 1.0

task DeSALTIndexReffa {
  input {
    String de_bga
    String index
    String reference_dot_fast_a
    String index_route
  }
  command <<<
    deSALT index ref_fa \
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