version 1.0

task Ctg2fasta {
  command <<<
    ctg2fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}