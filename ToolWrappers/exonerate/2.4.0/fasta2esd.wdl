version 1.0

task Fasta2esd {
  command <<<
    fasta2esd
  >>>
  output {
    File out_stdout = stdout()
  }
}