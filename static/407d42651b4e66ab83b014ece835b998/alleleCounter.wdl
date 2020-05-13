version 1.0

task AlleleCounter {
  input {
    Boolean lociLociFile
    Boolean htsHtsFile
    Boolean outputOutputFile
    Boolean refRefFile
    Boolean minMinBaseQual
    Boolean minMinMapQual
    Boolean contigContig
    Boolean denseDenseSnps
    Boolean isIs10x
    Boolean requiredRequiredFlag
  }
  command <<<
    alleleCounter \
      ~{true="--loci-file" false="" lociLociFile} \
      ~{true="--hts-file" false="" htsHtsFile} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--ref-file" false="" refRefFile} \
      ~{true="--min-base-qual" false="" minMinBaseQual} \
      ~{true="--min-map-qual" false="" minMinMapQual} \
      ~{true="--contig" false="" contigContig} \
      ~{true="--dense-snps" false="" denseDenseSnps} \
      ~{true="--is-10x" false="" isIs10x} \
      ~{true="--required-flag" false="" requiredRequiredFlag}
  >>>
}