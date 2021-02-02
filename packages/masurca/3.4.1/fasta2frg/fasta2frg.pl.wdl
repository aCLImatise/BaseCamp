version 1.0

task Fasta2frgpl {
  command <<<
    fasta2frg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}