version 1.0

task Testpubmedindex {
  command <<<
    test_pubmed_index
  >>>
  output {
    File out_stdout = stdout()
  }
}