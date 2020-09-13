version 1.0

task ExtractMergesMegareadspl {
  command <<<
    extract_merges_mega_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}