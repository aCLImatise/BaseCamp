version 1.0

task ComputeSrCovrevisedForGCContigpl {
  command <<<
    compute_sr_cov_revisedForGCContig_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}