version 1.0

task ShuffleSequencesFastapl {
  command <<<
    shuffleSequences_fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}