version 1.0

task Fastastripidentifier {
  command <<<
    fasta_strip_identifier
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}