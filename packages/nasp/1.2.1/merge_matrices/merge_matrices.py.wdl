version 1.0

task MergeMatricespy {
  command <<<
    merge_matrices_py
  >>>
  output {
    File out_stdout = stdout()
  }
}