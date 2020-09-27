version 1.0

task SamReadsCollapseplorig {
  command <<<
    sam_reads_collapse_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}