version 1.0

task Indexpubmed {
  command <<<
    index_pubmed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}