version 1.0

task JoinMegaReadsTrimonepassrefpl {
  command <<<
    join_mega_reads_trim_onepass_ref_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}