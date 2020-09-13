version 1.0

task Kmermask {
  command <<<
    kmer_mask
  >>>
  output {
    File out_stdout = stdout()
  }
}