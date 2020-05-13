version 1.0

task DshDownsampleInterleavedFastq {
  input {
    Boolean aboutAbout
    Boolean inputInputFastQFile
    Boolean outputOutputFastQFile
    Boolean probabilityProbability
    Boolean seedSeed
  }
  command <<<
    dsh-downsample-interleaved-fastq \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fastq-file" false="" inputInputFastQFile} \
      ~{true="--output-fastq-file" false="" outputOutputFastQFile} \
      ~{true="--probability" false="" probabilityProbability} \
      ~{true="--seed" false="" seedSeed}
  >>>
}