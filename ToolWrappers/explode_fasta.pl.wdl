version 1.0

task ExplodeFastapl {
  command <<<
    explode_fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}