version 1.0

task CreateMergedMegareadspl {
  command <<<
    create_merged_mega_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}