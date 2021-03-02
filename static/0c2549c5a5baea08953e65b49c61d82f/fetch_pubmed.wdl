version 1.0

task Fetchpubmed {
  command <<<
    fetch_pubmed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}