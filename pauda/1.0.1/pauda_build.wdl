version 1.0

task PaudaBuild {
  input {
    String references_fast_a
    String? p_aud_a_index_directory
  }
  command <<<
    pauda-build \
      ~{references_fast_a} \
      ~{p_aud_a_index_directory}
  >>>
  parameter_meta {
    references_fast_a: ""
    p_aud_a_index_directory: ""
  }
}