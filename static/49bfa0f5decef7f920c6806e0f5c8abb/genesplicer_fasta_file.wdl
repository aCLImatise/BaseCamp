version 1.0

task GenesplicerFastaFile {
  input {
    String? specificSpecificGenomeTrainingDirectory
  }
  command <<<
    genesplicer fasta-file \
      ~{specificSpecificGenomeTrainingDirectory}
  >>>
}