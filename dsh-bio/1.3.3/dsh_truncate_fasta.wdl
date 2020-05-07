version 1.0

task DshTruncateFasta {
  input {
    Boolean aboutAbout
    Boolean inputInputFastAFile
    Boolean outputOutputFastAFile
    Boolean lengthLength
    Boolean lineLineWidth
  }
  command <<<
    dsh-truncate-fasta \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fasta-file" false="" inputInputFastAFile} \
      ~{true="--output-fasta-file" false="" outputOutputFastAFile} \
      ~{true="--length" false="" lengthLength} \
      ~{true="--line-width" false="" lineLineWidth}
  >>>
}