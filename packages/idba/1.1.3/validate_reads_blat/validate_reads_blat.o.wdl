version 1.0

task ValidateReadsBlato {
  command <<<
    validate_reads_blat_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}