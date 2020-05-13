version 1.0

task DshCompressVcf {
  input {
    Boolean aboutAbout
    Boolean inputInputVcfFile
    Boolean outputOutputVcfFile
  }
  command <<<
    dsh-compress-vcf \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-vcf-file" false="" inputInputVcfFile} \
      ~{true="--output-vcf-file" false="" outputOutputVcfFile}
  >>>
}