version 1.0

task HtseqCount {
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
    Boolean appendAppendOutput
    String nNProcesses
    String featureFeatureQuery
    Boolean quietQuiet
    String? samSamFilenames
    String? featuresFeaturesFilename
  }
  command <<<
    htseq-count \
      ~{samSamFilenames} \
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
      ~{true="--append-output" false="" appendAppendOutput} \
      ~{if defined(nNProcesses) then ("--nprocesses " +  '"' + nNProcesses + '"') else ""} \
      ~{if defined(featureFeatureQuery) then ("--feature-query " +  '"' + featureFeatureQuery + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{featuresFeaturesFilename}
  >>>
}