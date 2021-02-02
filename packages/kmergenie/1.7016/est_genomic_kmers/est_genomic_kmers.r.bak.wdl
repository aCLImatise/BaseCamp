version 1.0

task Estgenomickmersrbak {
  command <<<
    est_genomic_kmers_r_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}