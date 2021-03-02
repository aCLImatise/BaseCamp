version 1.0

task Kp1merToKmerpy {
  command <<<
    kp1mer_to_kmer_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}