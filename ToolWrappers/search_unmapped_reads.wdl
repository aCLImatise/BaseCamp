version 1.0

task SearchUnmappedReads {
  command <<<
    search_unmapped_reads
  >>>
  output {
    File out_stdout = stdout()
  }
}