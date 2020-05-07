version 1.0

task FastaGetMarkovSequenceFileBackground {
  input {
    File? fileFile
  }
  command <<<
    fasta-get-markov sequence file background \
      ~{fileFile}
  >>>
}