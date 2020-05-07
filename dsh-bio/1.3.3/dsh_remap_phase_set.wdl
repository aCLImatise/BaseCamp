version 1.0

task DshRemapPhaseSet {
  input {
    Boolean aboutAbout
    Boolean inputInputVcfFile
    Boolean outputOutputVcfFile
  }
  command <<<
    dsh-remap-phase-set \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-vcf-file" false="" inputInputVcfFile} \
      ~{true="--output-vcf-file" false="" outputOutputVcfFile}
  >>>
}