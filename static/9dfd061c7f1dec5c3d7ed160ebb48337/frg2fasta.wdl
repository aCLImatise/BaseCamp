version 1.0

task Frg2fasta {
  command <<<
    frg2fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}