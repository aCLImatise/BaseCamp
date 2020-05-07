version 1.0

task StartCodonDistribCoords {
  input {
    String? sequenceSequenceFile
    String? coordsCoords
  }
  command <<<
    start-codon-distrib coords \
      ~{sequenceSequenceFile} \
      ~{coordsCoords}
  >>>
}