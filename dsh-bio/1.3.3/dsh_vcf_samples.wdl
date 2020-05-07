version 1.0

task DshVcfSamples {
  input {
    Boolean aboutAbout
    Boolean inputInputVcfFile
    Boolean outputOutputSampleFile
  }
  command <<<
    dsh-vcf-samples \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-vcf-file" false="" inputInputVcfFile} \
      ~{true="--output-sample-file" false="" outputOutputSampleFile}
  >>>
}