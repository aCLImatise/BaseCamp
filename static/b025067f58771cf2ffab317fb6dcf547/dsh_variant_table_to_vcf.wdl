version 1.0

task DshVariantTableToVcf {
  input {
    Boolean aboutAbout
    Boolean inputInputVariantTableFile
    Boolean outputOutputVcfFile
  }
  command <<<
    dsh-variant-table-to-vcf \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-variant-table-file" false="" inputInputVariantTableFile} \
      ~{true="--output-vcf-file" false="" outputOutputVcfFile}
  >>>
}