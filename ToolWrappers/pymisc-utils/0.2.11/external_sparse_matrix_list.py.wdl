version 1.0

task ExternalSparseMatrixListpy {
  command <<<
    external_sparse_matrix_list_py
  >>>
  output {
    File out_stdout = stdout()
  }
}