version 1.0

task Removeredundantvariations {
  input {
    String reference_dot_fast_a
    File variants_file
  }
  command <<<
    remove_redundant_variations \
      ~{reference_dot_fast_a} \
      ~{variants_file}
  >>>
  parameter_meta {
    reference_dot_fast_a: ""
    variants_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}