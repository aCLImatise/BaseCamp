version 1.0

task DshExtractFastqByLength {
  input {
    Boolean aboutAbout
    Boolean inputInputFastQFile
    Boolean outputOutputFastQFile
    Boolean minimumMinimumLength
    Boolean maximumMaximumLength
  }
  command <<<
    dsh-extract-fastq-by-length \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fastq-file" false="" inputInputFastQFile} \
      ~{true="--output-fastq-file" false="" outputOutputFastQFile} \
      ~{true="--minimum-length" false="" minimumMinimumLength} \
      ~{true="--maximum-length" false="" maximumMaximumLength}
  >>>
}