version 1.0

task KmerHistr {
  command <<<
    kmer_hist_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}