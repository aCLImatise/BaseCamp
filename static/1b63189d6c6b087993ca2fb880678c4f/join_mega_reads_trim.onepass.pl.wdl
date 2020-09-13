version 1.0

task JoinMegaReadsTrimonepasspl {
  command <<<
    join_mega_reads_trim_onepass_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}