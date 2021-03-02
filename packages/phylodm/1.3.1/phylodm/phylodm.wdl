version 1.0

task Phylodm {
  input {
    String newick
    String method
    String path_output_matrix
  }
  command <<<
    phylodm \
      ~{newick} \
      ~{method} \
      ~{path_output_matrix}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylodm:1.3.1--py36h29c9776_0"
  }
  parameter_meta {
    newick: "path to the newick file"
    method: "use patristic distance {pd} or node distance {node}"
    path_output_matrix: "path to output matrix"
  }
  output {
    File out_stdout = stdout()
  }
}