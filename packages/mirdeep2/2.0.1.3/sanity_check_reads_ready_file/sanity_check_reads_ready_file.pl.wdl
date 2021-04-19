version 1.0

task SanityCheckReadsReadyFilepl {
  command <<<
    sanity_check_reads_ready_file_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}