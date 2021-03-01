version 1.0

task Validatefastadatabase {
  command <<<
    validate_fasta_database
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}