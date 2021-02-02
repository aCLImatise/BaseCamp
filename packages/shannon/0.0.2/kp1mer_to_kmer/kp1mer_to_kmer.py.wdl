version 1.0

task Kp1merToKmerpy {
  command <<<
    kp1mer_to_kmer_py
  >>>
  output {
    File out_stdout = stdout()
  }
}