version 1.0

task ValidateRnao {
  command <<<
    validate_rna_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}