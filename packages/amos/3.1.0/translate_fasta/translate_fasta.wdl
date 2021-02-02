version 1.0

task Translatefasta {
  command <<<
    translate_fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}