version 1.0

task RetrieveSequencesFromFastapl {
  command <<<
    retrieve_sequences_from_fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}