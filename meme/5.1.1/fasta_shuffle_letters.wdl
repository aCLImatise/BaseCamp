version 1.0

task FastaShuffleLetters {
  input {
    String sequence_file
    String? output_file
  }
  command <<<
    fasta-shuffle-letters \
      ~{sequence_file} \
      ~{output_file}
  >>>
  parameter_meta {
    sequence_file: ""
    output_file: ""
  }
}