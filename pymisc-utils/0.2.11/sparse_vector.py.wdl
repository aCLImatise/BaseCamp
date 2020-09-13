version 1.0

task SparseVectorpy {
  command <<<
    sparse_vector_py
  >>>
  output {
    File out_stdout = stdout()
  }
}