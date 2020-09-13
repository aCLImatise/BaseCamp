version 1.0

task KmerHistr {
  command <<<
    kmer_hist_r
  >>>
  output {
    File out_stdout = stdout()
  }
}