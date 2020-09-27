version 1.0

task SiftBamMaxCovpl {
  command <<<
    sift_bam_max_cov_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}