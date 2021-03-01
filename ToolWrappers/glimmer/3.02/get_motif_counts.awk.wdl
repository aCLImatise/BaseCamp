version 1.0

task Getmotifcountsawk {
  command <<<
    get_motif_counts_awk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}