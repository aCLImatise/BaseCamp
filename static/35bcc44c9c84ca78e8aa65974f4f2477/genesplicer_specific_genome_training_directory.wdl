version 1.0

task GenesplicerSpecificGenomeTrainingDirectory {
  input {
    String? fastFastAFile
    String? specificSpecificGenomeTrainingDirectory
  }
  command <<<
    genesplicer specific-genome-training-directory \
      ~{fastFastAFile} \
      ~{specificSpecificGenomeTrainingDirectory}
  >>>
}