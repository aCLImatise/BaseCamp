version 1.0

task PathDecomposeSparsepy {
  command <<<
    path_decompose_sparse_py
  >>>
  output {
    File out_stdout = stdout()
  }
}