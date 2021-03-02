version 1.0

task IntersectionMatrixpyc {
  command <<<
    intersection_matrix_pyc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}