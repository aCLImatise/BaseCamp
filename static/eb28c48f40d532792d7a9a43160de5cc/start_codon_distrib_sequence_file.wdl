version 1.0

task StartCodonDistribSequenceFile {
  input {
    String? coordsCoords
  }
  command <<<
    start-codon-distrib sequence-file \
      ~{coordsCoords}
  >>>
}