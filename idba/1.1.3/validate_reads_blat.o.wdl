version 1.0

task ValidateReadsBlato {
  command <<<
    validate_reads_blat_o
  >>>
  output {
    File out_stdout = stdout()
  }
}