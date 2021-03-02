version 1.0

task CollapseReadsMdplorig {
  command <<<
    collapse_reads_md_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}