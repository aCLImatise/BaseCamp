version 1.0

task JoinMegaReadsTrimonepassnomatchpl {
  command <<<
    join_mega_reads_trim_onepass_nomatch_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}