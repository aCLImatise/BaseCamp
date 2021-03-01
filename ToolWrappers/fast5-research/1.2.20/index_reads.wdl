version 1.0

task IndexReads {
  command <<<
    index_reads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}