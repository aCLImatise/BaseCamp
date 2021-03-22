version 1.0

task ValidateContigsMummero {
  command <<<
    validate_contigs_mummer_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}