version 1.0

task GroupBpReadspl {
  command <<<
    group_bp_reads_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}