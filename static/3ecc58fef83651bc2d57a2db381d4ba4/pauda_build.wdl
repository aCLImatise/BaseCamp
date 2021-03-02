version 1.0

task Paudabuild {
  input {
    String references_fast_a
    Directory? p_aud_a_index_directory
  }
  command <<<
    pauda_build \
      ~{references_fast_a} \
      ~{p_aud_a_index_directory}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    references_fast_a: ""
    p_aud_a_index_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}