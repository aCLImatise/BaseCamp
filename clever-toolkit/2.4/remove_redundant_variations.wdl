version 1.0

task RemoveRedundantVariations {
  input {
    String reference_dot_fast_a
    String variants_file
  }
  command <<<
    remove-redundant-variations \
      ~{reference_dot_fast_a} \
      ~{variants_file}
  >>>
  parameter_meta {
    reference_dot_fast_a: ""
    variants_file: ""
  }
}