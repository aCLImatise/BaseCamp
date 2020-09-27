version 1.0

task Downloadpubmed {
  command <<<
    download_pubmed
  >>>
  output {
    File out_stdout = stdout()
  }
}