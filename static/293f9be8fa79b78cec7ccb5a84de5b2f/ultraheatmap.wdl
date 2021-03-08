version 1.0

task Ultraheatmap {
  input {
    String compute_ordered_matrix
  }
  command <<<
    ultraheatmap \
      ~{compute_ordered_matrix}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ultraheatmap:1.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    compute_ordered_matrix: "addFeatureToMatrix"
  }
  output {
    File out_stdout = stdout()
  }
}