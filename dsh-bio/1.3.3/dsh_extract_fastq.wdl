version 1.0

task DshExtractFastq {
  input {
    Boolean aboutAbout
    Boolean inputInputFastQFile
    Boolean outputOutputFastQFile
    Boolean nameName
    Boolean descriptionDescription
  }
  command <<<
    dsh-extract-fastq \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fastq-file" false="" inputInputFastQFile} \
      ~{true="--output-fastq-file" false="" outputOutputFastQFile} \
      ~{true="--name" false="" nameName} \
      ~{true="--description" false="" descriptionDescription}
  >>>
}