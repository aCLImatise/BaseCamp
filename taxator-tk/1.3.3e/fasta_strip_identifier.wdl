version 1.0

task Fastastripidentifier {
  command <<<
    fasta_strip_identifier
  >>>
  output {
    File out_stdout = stdout()
  }
}