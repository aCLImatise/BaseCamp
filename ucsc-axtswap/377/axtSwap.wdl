version 1.0

task AxtSwap {
  input {
    String source_do_tax_t
    String target_dot_sizes
    String query_dot_sizes
    String dest_do_tax_t
  }
  command <<<
    axtSwap \
      ~{source_do_tax_t} \
      ~{target_dot_sizes} \
      ~{query_dot_sizes} \
      ~{dest_do_tax_t}
  >>>
  parameter_meta {
    source_do_tax_t: ""
    target_dot_sizes: ""
    query_dot_sizes: ""
    dest_do_tax_t: ""
  }
}