version 1.0

task FilterMatrixByDistancepy {
  command <<<
    filter_matrix_by_distance_py
  >>>
  output {
    File out_stdout = stdout()
  }
}