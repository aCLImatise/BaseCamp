version 1.0

task Gemmappabilityretriever {
  command <<<
    gem_mappability_retriever
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  output {
    File out_stdout = stdout()
  }
}