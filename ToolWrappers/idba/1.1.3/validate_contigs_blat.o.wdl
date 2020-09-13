version 1.0

task ValidateContigsBlato {
  command <<<
    validate_contigs_blat_o
  >>>
  output {
    File out_stdout = stdout()
  }
}