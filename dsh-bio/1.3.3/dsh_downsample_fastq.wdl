version 1.0

task DshDownsampleFastq {
  input {
    Boolean aboutAbout
    Boolean inputInputFastQFile
    Boolean outputOutputFastQFile
    Boolean probabilityProbability
    Boolean seedSeed
  }
  command <<<
    dsh-downsample-fastq \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fastq-file" false="" inputInputFastQFile} \
      ~{true="--output-fastq-file" false="" outputOutputFastQFile} \
      ~{true="--probability" false="" probabilityProbability} \
      ~{true="--seed" false="" seedSeed}
  >>>
}