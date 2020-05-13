version 1.0

task DshVcfPedigree {
  input {
    Boolean aboutAbout
    Boolean inputInputVcfFile
    Boolean outputOutputPedigreeFile
  }
  command <<<
    dsh-vcf-pedigree \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-vcf-file" false="" inputInputVcfFile} \
      ~{true="--output-pedigree-file" false="" outputOutputPedigreeFile}
  >>>
}