version 1.0

task Ultraheatmap {
  input {
    String compute_ordered_matrix
  }
  command <<<
    ultraheatmap \
      ~{compute_ordered_matrix}
  >>>
  parameter_meta {
    compute_ordered_matrix: "addFeatureToMatrix"
  }
  output {
    File out_stdout = stdout()
  }
}