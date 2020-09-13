version 1.0

task Fasta2col {
  command <<<
    fasta2col
  >>>
  output {
    File out_stdout = stdout()
  }
}