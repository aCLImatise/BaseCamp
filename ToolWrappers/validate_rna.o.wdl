version 1.0

task ValidateRnao {
  command <<<
    validate_rna_o
  >>>
  output {
    File out_stdout = stdout()
  }
}