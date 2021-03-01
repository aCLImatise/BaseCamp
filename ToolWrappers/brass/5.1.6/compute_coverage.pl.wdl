version 1.0

task ComputeCoveragepl {
  command <<<
    compute_coverage_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}