version 1.0

task Testpubmedindex {
  command <<<
    test_pubmed_index
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}