version 1.0

task DshFastaToFastq {
  input {
    Boolean aboutAbout
    Boolean inputInputFastAFile
    Boolean outputOutputFastQFile
    Boolean qualityQuality
  }
  command <<<
    dsh-fasta-to-fastq \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fasta-file" false="" inputInputFastAFile} \
      ~{true="--output-fastq-file" false="" outputOutputFastQFile} \
      ~{true="--quality" false="" qualityQuality}
  >>>
}