version 1.0

task DshVcfHeader {
  input {
    Boolean aboutAbout
    Boolean inputInputVcfFile
    Boolean outputOutputVcfHeaderFile
    Boolean validateValidate
  }
  command <<<
    dsh-vcf-header \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-vcf-file" false="" inputInputVcfFile} \
      ~{true="--output-vcf-header-file" false="" outputOutputVcfHeaderFile} \
      ~{true="--validate" false="" validateValidate}
  >>>
}