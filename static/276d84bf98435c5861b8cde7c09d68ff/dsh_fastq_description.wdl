version 1.0

task DshFastqDescription {
  input {
    Boolean aboutAbout
    Boolean fastFastQFile
    Boolean descriptionDescriptionFile
  }
  command <<<
    dsh-fastq-description \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--fastq-file" false="" fastFastQFile} \
      ~{true="--description-file" false="" descriptionDescriptionFile}
  >>>
}