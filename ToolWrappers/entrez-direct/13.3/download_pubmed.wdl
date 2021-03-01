version 1.0

task Downloadpubmed {
  command <<<
    download_pubmed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}