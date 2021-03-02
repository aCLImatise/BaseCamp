version 1.0

task Gemretriever {
  command <<<
    gem_retriever
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  output {
    File out_stdout = stdout()
  }
}