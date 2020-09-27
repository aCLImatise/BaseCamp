version 1.0

task Archivepubmed {
  command <<<
    archive_pubmed
  >>>
  output {
    File out_stdout = stdout()
  }
}