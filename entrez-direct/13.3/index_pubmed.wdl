version 1.0

task Indexpubmed {
  command <<<
    index_pubmed
  >>>
  output {
    File out_stdout = stdout()
  }
}