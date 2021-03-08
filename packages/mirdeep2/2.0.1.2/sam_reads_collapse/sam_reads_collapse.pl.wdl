version 1.0

task SamReadsCollapsepl {
  command <<<
    sam_reads_collapse_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}