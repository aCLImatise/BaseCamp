version 1.0

task Kmer2readDistr {
  command <<<
    kmer2read_distr
  >>>
  output {
    File out_stdout = stdout()
  }
}