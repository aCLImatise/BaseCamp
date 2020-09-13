version 1.0

task AlignAndEstimateAbundancepl {
  command <<<
    align_and_estimate_abundance_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}