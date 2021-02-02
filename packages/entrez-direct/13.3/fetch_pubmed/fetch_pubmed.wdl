version 1.0

task Fetchpubmed {
  command <<<
    fetch_pubmed
  >>>
  output {
    File out_stdout = stdout()
  }
}