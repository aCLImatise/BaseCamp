version 1.0

task FastaGetMarkovSequenceBackground {
  input {
    File? fileFile
    String? backgroundBackground
    File? fileFile
  }
  command <<<
    fasta-get-markov sequence background \
      ~{fileFile} \
      ~{backgroundBackground} \
      ~{fileFile}
  >>>
}