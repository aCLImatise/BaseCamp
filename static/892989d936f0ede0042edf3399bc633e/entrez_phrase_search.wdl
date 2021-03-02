version 1.0

task Entrezphrasesearch {
  command <<<
    entrez_phrase_search
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}