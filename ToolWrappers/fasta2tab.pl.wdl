version 1.0

task Fasta2tabpl {
  command <<<
    fasta2tab_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}