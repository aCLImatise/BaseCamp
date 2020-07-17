version 1.0

task PhylodmPath {
  input {
    String newick
    String method
    String path_output_matrix
  }
  command <<<
    phylodm path \
      ~{newick} \
      ~{method} \
      ~{path_output_matrix}
  >>>
  parameter_meta {
    newick: "path to the newick file"
    method: "use patristic distance {pd} or node distance {node}"
    path_output_matrix: "path to output matrix"
  }
}