version 1.0

task SamReadsCollapsepl {
  command <<<
    sam_reads_collapse_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}