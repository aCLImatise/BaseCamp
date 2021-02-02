version 1.0

task Scaff2fasta {
  command <<<
    scaff2fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}