version 1.0

task Getmotifcountsawk {
  command <<<
    get_motif_counts_awk
  >>>
  output {
    File out_stdout = stdout()
  }
}