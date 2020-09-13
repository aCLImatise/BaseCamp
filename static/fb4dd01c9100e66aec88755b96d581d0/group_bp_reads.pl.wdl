version 1.0

task GroupBpReadspl {
  command <<<
    group_bp_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}