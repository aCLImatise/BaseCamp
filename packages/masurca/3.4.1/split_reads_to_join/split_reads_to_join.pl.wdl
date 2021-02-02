version 1.0

task SplitReadsToJoinpl {
  command <<<
    split_reads_to_join_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}