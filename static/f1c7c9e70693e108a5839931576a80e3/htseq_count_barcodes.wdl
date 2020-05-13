version 1.0

task HtseqCountBarcodes {
  input {
    String formatFormat
    String orderOrder
    Int maxMaxReadsInBuffer
    String strandedStranded
    Int minaMinaQual
    String typeType
    String idIdAttr
    String additionalAdditionalAttr
    String modeMode
    String nonNonUnique
    String secondarySecondaryAlignments
    String supplementarySupplementaryAlignments
    String samSamOut
    String samSamOutFormat
    String delimiterDelimiter
    String countsCountsOutput
    String cellCellBarcode
    String umiUmi
    Boolean quietQuiet
    String? samSamFilename
    String? featuresFeaturesFilename
  }
  command <<<
    htseq-count-barcodes \
      ~{samSamFilename} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(maxMaxReadsInBuffer) then ("--max-reads-in-buffer " +  '"' + maxMaxReadsInBuffer + '"') else ""} \
      ~{if defined(strandedStranded) then ("--stranded " +  '"' + strandedStranded + '"') else ""} \
      ~{if defined(minaMinaQual) then ("--minaqual " +  '"' + minaMinaQual + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(idIdAttr) then ("--idattr " +  '"' + idIdAttr + '"') else ""} \
      ~{if defined(additionalAdditionalAttr) then ("--additional-attr " +  '"' + additionalAdditionalAttr + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(nonNonUnique) then ("--nonunique " +  '"' + nonNonUnique + '"') else ""} \
      ~{if defined(secondarySecondaryAlignments) then ("--secondary-alignments " +  '"' + secondarySecondaryAlignments + '"') else ""} \
      ~{if defined(supplementarySupplementaryAlignments) then ("--supplementary-alignments " +  '"' + supplementarySupplementaryAlignments + '"') else ""} \
      ~{if defined(samSamOut) then ("--samout " +  '"' + samSamOut + '"') else ""} \
      ~{if defined(samSamOutFormat) then ("--samout-format " +  '"' + samSamOutFormat + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(countsCountsOutput) then ("--counts_output " +  '"' + countsCountsOutput + '"') else ""} \
      ~{if defined(cellCellBarcode) then ("--cell-barcode " +  '"' + cellCellBarcode + '"') else ""} \
      ~{if defined(umiUmi) then ("--UMI " +  '"' + umiUmi + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{featuresFeaturesFilename}
  >>>
}