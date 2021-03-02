version 1.0

task PathDecomposeSparsepy {
  command <<<
    path_decompose_sparse_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}