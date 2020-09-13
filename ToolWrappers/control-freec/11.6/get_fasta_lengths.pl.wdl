version 1.0

task GetFastaLengthspl {
  command <<<
    get_fasta_lengths_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}