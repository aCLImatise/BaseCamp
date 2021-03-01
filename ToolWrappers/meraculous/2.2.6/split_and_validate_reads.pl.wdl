version 1.0

task SplitAndValidateReadspl {
  command <<<
    split_and_validate_reads_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}