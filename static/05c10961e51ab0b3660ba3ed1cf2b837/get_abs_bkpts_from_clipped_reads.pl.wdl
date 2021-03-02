version 1.0

task GetAbsBkptsFromClippedReadspl {
  command <<<
    get_abs_bkpts_from_clipped_reads_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}