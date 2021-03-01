version 1.0

task GeneCheckerFastapy {
  command <<<
    geneChecker_fasta_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitofinder:1.4--py27h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}