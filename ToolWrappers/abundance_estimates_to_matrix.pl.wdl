version 1.0

task AbundanceEstimatesToMatrixpl {
  command <<<
    abundance_estimates_to_matrix_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}