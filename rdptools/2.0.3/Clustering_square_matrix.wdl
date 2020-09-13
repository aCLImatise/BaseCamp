version 1.0

task ClusteringSquarematrix {
  input {
    String column_matrix
    String id_mapping
    String output_matrix
  }
  command <<<
    Clustering square_matrix \
      ~{column_matrix} \
      ~{id_mapping} \
      ~{output_matrix}
  >>>
  parameter_meta {
    column_matrix: ""
    id_mapping: ""
    output_matrix: ""
  }
  output {
    File out_stdout = stdout()
  }
}