version 1.0

task Imseq {
  input {
    File referenceReference
    String outOutAmino
    String outOutNuc
    String outOut
    Boolean reverseReverse
    String truncateTruncateReads
    File rejectRejectLog
    Boolean withWithAlleles
    String vVErrRate
    String jJErrRate
    String pairedPairedVError
    String vVReadCrop
    String jJCoreLength
    String jJCoreOffset
    String vVCoreLength
    String vVCoreOffset
    String vVCoreErrors
    String jJCoreErrors
    String minMinQual
    String minMinClustQual
    String minMinReadLength
    String minMinCdr3Length
    Boolean singleSingleEndFallBack
    Boolean barcodeBarcodeVdj
    String bcBcSeqMaxErr
    String bcBcMinQual
    String barcodeBarcodeLength
    String barcodeBarcodeErrRate
    String barcodeBarcodeFreqRate
    File barcodeBarcodeStats
    File outOutAminoBc
    File outOutNucBc
    Boolean mergeMergeAmbiguousSeg
    Boolean qualQualClust
    Boolean simpleSimpleClust
    String maxMaxErrHq
    String minMinSdDiff
    String maxMaxErrLq
    String maxMaxClustRatio
    String jobsJobs
    Boolean printPrintAlignments
  }
  command <<<
    imseq \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outOutAmino) then ("--out-amino " +  '"' + outOutAmino + '"') else ""} \
      ~{if defined(outOutNuc) then ("--out-nuc " +  '"' + outOutNuc + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(truncateTruncateReads) then ("--truncate-reads " +  '"' + truncateTruncateReads + '"') else ""} \
      ~{if defined(rejectRejectLog) then ("--reject-log " +  '"' + rejectRejectLog + '"') else ""} \
      ~{true="--with-alleles" false="" withWithAlleles} \
      ~{if defined(vVErrRate) then ("--v-err-rate " +  '"' + vVErrRate + '"') else ""} \
      ~{if defined(jJErrRate) then ("--j-err-rate " +  '"' + jJErrRate + '"') else ""} \
      ~{if defined(pairedPairedVError) then ("--paired-v-error " +  '"' + pairedPairedVError + '"') else ""} \
      ~{if defined(vVReadCrop) then ("--v-read-crop " +  '"' + vVReadCrop + '"') else ""} \
      ~{if defined(jJCoreLength) then ("--j-core-length " +  '"' + jJCoreLength + '"') else ""} \
      ~{if defined(jJCoreOffset) then ("--j-core-offset " +  '"' + jJCoreOffset + '"') else ""} \
      ~{if defined(vVCoreLength) then ("--v-core-length " +  '"' + vVCoreLength + '"') else ""} \
      ~{if defined(vVCoreOffset) then ("--v-core-offset " +  '"' + vVCoreOffset + '"') else ""} \
      ~{if defined(vVCoreErrors) then ("--v-core-errors " +  '"' + vVCoreErrors + '"') else ""} \
      ~{if defined(jJCoreErrors) then ("--j-core-errors " +  '"' + jJCoreErrors + '"') else ""} \
      ~{if defined(minMinQual) then ("--min-qual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(minMinClustQual) then ("--min-clust-qual " +  '"' + minMinClustQual + '"') else ""} \
      ~{if defined(minMinReadLength) then ("--min-read-length " +  '"' + minMinReadLength + '"') else ""} \
      ~{if defined(minMinCdr3Length) then ("--min-cdr3-length " +  '"' + minMinCdr3Length + '"') else ""} \
      ~{true="--single-end-fallback" false="" singleSingleEndFallBack} \
      ~{true="--barcode-vdj" false="" barcodeBarcodeVdj} \
      ~{if defined(bcBcSeqMaxErr) then ("--bcseq-max-err " +  '"' + bcBcSeqMaxErr + '"') else ""} \
      ~{if defined(bcBcMinQual) then ("--bc-min-qual " +  '"' + bcBcMinQual + '"') else ""} \
      ~{if defined(barcodeBarcodeLength) then ("--barcode-length " +  '"' + barcodeBarcodeLength + '"') else ""} \
      ~{if defined(barcodeBarcodeErrRate) then ("--barcode-err-rate " +  '"' + barcodeBarcodeErrRate + '"') else ""} \
      ~{if defined(barcodeBarcodeFreqRate) then ("--barcode-freq-rate " +  '"' + barcodeBarcodeFreqRate + '"') else ""} \
      ~{if defined(barcodeBarcodeStats) then ("--barcode-stats " +  '"' + barcodeBarcodeStats + '"') else ""} \
      ~{if defined(outOutAminoBc) then ("--out-amino-bc " +  '"' + outOutAminoBc + '"') else ""} \
      ~{if defined(outOutNucBc) then ("--out-nuc-bc " +  '"' + outOutNucBc + '"') else ""} \
      ~{true="--merge-ambiguous-seg" false="" mergeMergeAmbiguousSeg} \
      ~{true="--qual-clust" false="" qualQualClust} \
      ~{true="--simple-clust" false="" simpleSimpleClust} \
      ~{if defined(maxMaxErrHq) then ("--max-err-hq " +  '"' + maxMaxErrHq + '"') else ""} \
      ~{if defined(minMinSdDiff) then ("--min-sd-diff " +  '"' + minMinSdDiff + '"') else ""} \
      ~{if defined(maxMaxErrLq) then ("--max-err-lq " +  '"' + maxMaxErrLq + '"') else ""} \
      ~{if defined(maxMaxClustRatio) then ("--max-clust-ratio " +  '"' + maxMaxClustRatio + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="--print-alignments" false="" printPrintAlignments}
  >>>
}