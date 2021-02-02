version 1.0

task GetAbsBkptsFromClippedReadspl {
  command <<<
    get_abs_bkpts_from_clipped_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}