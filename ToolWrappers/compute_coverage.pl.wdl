version 1.0

task ComputeCoveragepl {
  command <<<
    compute_coverage_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}