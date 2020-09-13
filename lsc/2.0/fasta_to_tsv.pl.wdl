version 1.0

task FastaToTsvpl {
  command <<<
    fasta_to_tsv_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}