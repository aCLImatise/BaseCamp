version 1.0

task AbundanceEstimatesToMatrixpl {
  command <<<
    abundance_estimates_to_matrix_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.12.0--h5ef6573_0"
  }
  output {
    File out_stdout = stdout()
  }
}