version 1.0

task Ogenerateenvironmentfrommatrixcounts {
  command <<<
    o_generate_environment_from_matrix_counts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}