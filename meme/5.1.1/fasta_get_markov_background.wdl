version 1.0

task FastaGetMarkovBackground {
  input {
    String? sequenceSequence
    File? fileFile
    String? backgroundBackground
    File? fileFile
  }
  command <<<
    fasta-get-markov background \
      ~{sequenceSequence} \
      ~{fileFile} \
      ~{backgroundBackground} \
      ~{fileFile}
  >>>
}