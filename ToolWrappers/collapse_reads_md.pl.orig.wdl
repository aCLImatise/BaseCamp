version 1.0

task CollapseReadsMdplorig {
  command <<<
    collapse_reads_md_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}