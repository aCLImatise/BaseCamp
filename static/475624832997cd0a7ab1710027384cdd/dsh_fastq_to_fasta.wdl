version 1.0

task DshFastqToFasta {
  input {
    Boolean aboutAbout
    Boolean inputInputFastQFile
    Boolean outputOutputFastAFile
  }
  command <<<
    dsh-fastq-to-fasta \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fastq-file" false="" inputInputFastQFile} \
      ~{true="--output-fasta-file" false="" outputOutputFastAFile}
  >>>
}