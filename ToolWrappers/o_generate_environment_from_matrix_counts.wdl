version 1.0

task Ogenerateenvironmentfrommatrixcounts {
  command <<<
    o_generate_environment_from_matrix_counts
  >>>
  output {
    File out_stdout = stdout()
  }
}