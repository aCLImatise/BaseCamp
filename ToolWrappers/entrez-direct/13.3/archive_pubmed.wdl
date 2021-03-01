version 1.0

task Archivepubmed {
  command <<<
    archive_pubmed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}