version 1.0

task Utg2fasta {
  command <<<
    utg2fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}