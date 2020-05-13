version 1.0

task DshCompressFasta {
  input {
    Boolean aboutAbout
    Boolean inputInputFastAFile
    Boolean outputOutputFastAFile
    Boolean lineLineWidth
  }
  command <<<
    dsh-compress-fasta \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fasta-file" false="" inputInputFastAFile} \
      ~{true="--output-fasta-file" false="" outputOutputFastAFile} \
      ~{true="--line-width" false="" lineLineWidth}
  >>>
}