version 1.0

task ValidateContigsMummero {
  command <<<
    validate_contigs_mummer_o
  >>>
  output {
    File out_stdout = stdout()
  }
}