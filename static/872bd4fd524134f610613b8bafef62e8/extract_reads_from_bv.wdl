version 1.0

task ExtractReadsFromBv {
  command <<<
    extract_reads_from_bv
  >>>
  output {
    File out_stdout = stdout()
  }
}