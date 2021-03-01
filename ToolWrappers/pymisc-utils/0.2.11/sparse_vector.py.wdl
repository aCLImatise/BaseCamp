version 1.0

task SparseVectorpy {
  command <<<
    sparse_vector_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}