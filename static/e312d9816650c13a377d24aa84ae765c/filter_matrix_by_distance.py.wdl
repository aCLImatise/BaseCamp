version 1.0

task FilterMatrixByDistancepy {
  command <<<
    filter_matrix_by_distance_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}