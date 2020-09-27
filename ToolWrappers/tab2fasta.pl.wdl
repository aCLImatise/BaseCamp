version 1.0

task Tab2fastapl {
  command <<<
    tab2fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}