version 1.0

task IntersectionMatrixpyc {
  command <<<
    intersection_matrix_pyc
  >>>
  output {
    File out_stdout = stdout()
  }
}