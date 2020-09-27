version 1.0

task SanityCheckReadsReadyFilepl {
  command <<<
    sanity_check_reads_ready_file_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}