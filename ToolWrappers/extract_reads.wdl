version 1.0

task ExtractReads {
  command <<<
    extract_reads
  >>>
  output {
    File out_stdout = stdout()
  }
}