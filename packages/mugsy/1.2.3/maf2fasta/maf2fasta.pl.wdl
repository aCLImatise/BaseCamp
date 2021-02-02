version 1.0

task Maf2fastapl {
  command <<<
    maf2fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}