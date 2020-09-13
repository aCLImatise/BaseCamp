version 1.0

task MergeMegareadspl {
  command <<<
    merge_mega_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}