version 1.0

task DshFilterVcf {
  input {
    Boolean aboutAbout
    Boolean idId
    Boolean rangeRange
    Boolean qualQual
    Boolean filterFilter
    Boolean scriptScript
    Boolean inputInputVcfFile
    Boolean outputOutputVcfFile
  }
  command <<<
    dsh-filter-vcf \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--id" false="" idId} \
      ~{true="--range" false="" rangeRange} \
      ~{true="--qual" false="" qualQual} \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--script" false="" scriptScript} \
      ~{true="--input-vcf-file" false="" inputInputVcfFile} \
      ~{true="--output-vcf-file" false="" outputOutputVcfFile}
  >>>
}