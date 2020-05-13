version 1.0

task DshFastqSequenceLength {
  input {
    Boolean aboutAbout
    Boolean fastFastQFile
    Boolean sequenceSequenceLengthFile
  }
  command <<<
    dsh-fastq-sequence-length \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--fastq-file" false="" fastFastQFile} \
      ~{true="--sequence-length-file" false="" sequenceSequenceLengthFile}
  >>>
}