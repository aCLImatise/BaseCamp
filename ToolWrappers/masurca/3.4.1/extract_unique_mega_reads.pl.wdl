version 1.0

task ExtractUniqueMegareadspl {
  command <<<
    extract_unique_mega_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}