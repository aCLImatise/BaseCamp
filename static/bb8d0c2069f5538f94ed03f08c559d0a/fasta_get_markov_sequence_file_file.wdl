version 1.0

task FastaGetMarkovSequenceFileFile {
  input {
    String? backgroundBackground
    File? fileFile
  }
  command <<<
    fasta-get-markov sequence file file \
      ~{backgroundBackground} \
      ~{fileFile}
  >>>
}