version 1.0

task SanityCheckReadsReadyFileplorig {
  command <<<
    sanity_check_reads_ready_file_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}