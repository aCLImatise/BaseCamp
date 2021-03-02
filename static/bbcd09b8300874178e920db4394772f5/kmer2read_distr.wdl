version 1.0

task Kmer2readDistr {
  command <<<
    kmer2read_distr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}