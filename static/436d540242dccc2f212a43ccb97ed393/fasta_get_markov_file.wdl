version 1.0

task FastaGetMarkovFile {
  input {
    String? sequenceSequence
    File? fileFile
    String? backgroundBackground
    File? fileFile
  }
  command <<<
    fasta-get-markov file \
      ~{sequenceSequence} \
      ~{fileFile} \
      ~{backgroundBackground} \
      ~{fileFile}
  >>>
}