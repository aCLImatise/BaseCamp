version 1.0

task Kmer2readDistr {
  command <<<
    kmer2read_distr
  >>>
  runtime {
    docker: "quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0"
  }
  output {
    File out_stdout = stdout()
  }
}