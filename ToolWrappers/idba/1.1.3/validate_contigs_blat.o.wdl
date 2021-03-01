version 1.0

task ValidateContigsBlato {
  command <<<
    validate_contigs_blat_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}