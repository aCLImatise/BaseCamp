version 1.0

task SamReadsCollapseplorig {
  command <<<
    sam_reads_collapse_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}