version 1.0

task IndexReads {
  command <<<
    index_reads
  >>>
  output {
    File out_stdout = stdout()
  }
}