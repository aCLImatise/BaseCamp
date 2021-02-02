version 1.0

task SplitAndValidateReadspl {
  command <<<
    split_and_validate_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}