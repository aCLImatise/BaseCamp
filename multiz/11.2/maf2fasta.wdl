version 1.0

task Maf2fasta {
  command <<<
    maf2fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}