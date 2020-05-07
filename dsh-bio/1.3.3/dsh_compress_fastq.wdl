version 1.0

task DshCompressFastq {
  input {
    Boolean aboutAbout
    Boolean inputInputFastQFile
    Boolean outputOutputFastQFile
  }
  command <<<
    dsh-compress-fastq \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fastq-file" false="" inputInputFastQFile} \
      ~{true="--output-fastq-file" false="" outputOutputFastQFile}
  >>>
}