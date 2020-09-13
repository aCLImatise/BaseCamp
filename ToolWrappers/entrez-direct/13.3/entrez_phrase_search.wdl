version 1.0

task Entrezphrasesearch {
  command <<<
    entrez_phrase_search
  >>>
  output {
    File out_stdout = stdout()
  }
}