version 1.0

task HiliveOut {
  input {
    Boolean cC
    Boolean lL
    Boolean cC
    String runRunInfo
    String continueContinue
    Boolean bB
    Boolean lL
    Boolean tT
    Boolean tT
    Boolean rR
    Boolean bB
    String runRunId
    String flowFlowCellId
    String instrumentInstrumentId
    Boolean oO
    Boolean fF
    Boolean oO
    Boolean mM
    Boolean reportReportUnmapped
    Boolean extendedExtendedCigar
    Boolean forceForceResort
    String maxMaxSoftClipRatio
    Boolean iI
    Boolean mM
    String anchorAnchorLength
    String errorErrorInterval
    String seedingSeedingInterval
    String maxMaxSoftClipLength
    String barcodeBarcodeErrors
    Boolean alignAlignUndeterminedBarcodes
    String minMinBaseCallQuality
    Boolean keepKeepInvalidSequences
    Boolean sS
    String matchMatchScore
    String mismatchMismatchPenalty
    String insertionInsertionOpeningPenalty
    String insertionInsertionExtensionPenalty
    String deletionDeletionOpeningPenalty
    String deletionDeletionExtensionPenalty
    String maxMaxGapLength
    String softSoftClipOpeningPenalty
    String softSoftClipExtensionPenalty
    String tempTempDir
    Boolean kK
    Boolean kK
    String blockBlockSize
    String compressionCompression
    Boolean nN
    Boolean nN
  }
  command <<<
    hilive-out \
      ~{true="-c" false="" cC} \
      ~{true="-l" false="" lL} \
      ~{true="-c" false="" cC} \
      ~{if defined(runRunInfo) then ("--runinfo " +  '"' + runRunInfo + '"') else ""} \
      ~{if defined(continueContinue) then ("--continue " +  '"' + continueContinue + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="-l" false="" lL} \
      ~{true="-t" false="" tT} \
      ~{true="-T" false="" tT} \
      ~{true="-r" false="" rR} \
      ~{true="-B" false="" bB} \
      ~{if defined(runRunId) then ("--run-id " +  '"' + runRunId + '"') else ""} \
      ~{if defined(flowFlowCellId) then ("--flowcell-id " +  '"' + flowFlowCellId + '"') else ""} \
      ~{if defined(instrumentInstrumentId) then ("--instrument-id " +  '"' + instrumentInstrumentId + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{true="-O" false="" oO} \
      ~{true="-M" false="" mM} \
      ~{true="--report-unmapped" false="" reportReportUnmapped} \
      ~{true="--extended-cigar" false="" extendedExtendedCigar} \
      ~{true="--force-resort" false="" forceForceResort} \
      ~{if defined(maxMaxSoftClipRatio) then ("--max-softclip-ratio " +  '"' + maxMaxSoftClipRatio + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{if defined(anchorAnchorLength) then ("--anchor-length " +  '"' + anchorAnchorLength + '"') else ""} \
      ~{if defined(errorErrorInterval) then ("--error-interval " +  '"' + errorErrorInterval + '"') else ""} \
      ~{if defined(seedingSeedingInterval) then ("--seeding-interval " +  '"' + seedingSeedingInterval + '"') else ""} \
      ~{if defined(maxMaxSoftClipLength) then ("--max-softclip-length " +  '"' + maxMaxSoftClipLength + '"') else ""} \
      ~{if defined(barcodeBarcodeErrors) then ("--barcode-errors " +  '"' + barcodeBarcodeErrors + '"') else ""} \
      ~{true="--align-undetermined-barcodes" false="" alignAlignUndeterminedBarcodes} \
      ~{if defined(minMinBaseCallQuality) then ("--min-basecall-quality " +  '"' + minMinBaseCallQuality + '"') else ""} \
      ~{true="--keep-invalid-sequences" false="" keepKeepInvalidSequences} \
      ~{true="-s" false="" sS} \
      ~{if defined(matchMatchScore) then ("--match-score " +  '"' + matchMatchScore + '"') else ""} \
      ~{if defined(mismatchMismatchPenalty) then ("--mismatch-penalty " +  '"' + mismatchMismatchPenalty + '"') else ""} \
      ~{if defined(insertionInsertionOpeningPenalty) then ("--insertion-opening-penalty " +  '"' + insertionInsertionOpeningPenalty + '"') else ""} \
      ~{if defined(insertionInsertionExtensionPenalty) then ("--insertion-extension-penalty " +  '"' + insertionInsertionExtensionPenalty + '"') else ""} \
      ~{if defined(deletionDeletionOpeningPenalty) then ("--deletion-opening-penalty " +  '"' + deletionDeletionOpeningPenalty + '"') else ""} \
      ~{if defined(deletionDeletionExtensionPenalty) then ("--deletion-extension-penalty " +  '"' + deletionDeletionExtensionPenalty + '"') else ""} \
      ~{if defined(maxMaxGapLength) then ("--max-gap-length " +  '"' + maxMaxGapLength + '"') else ""} \
      ~{if defined(softSoftClipOpeningPenalty) then ("--softclip-opening-penalty " +  '"' + softSoftClipOpeningPenalty + '"') else ""} \
      ~{if defined(softSoftClipExtensionPenalty) then ("--softclip-extension-penalty " +  '"' + softSoftClipExtensionPenalty + '"') else ""} \
      ~{if defined(tempTempDir) then ("--temp-dir " +  '"' + tempTempDir + '"') else ""} \
      ~{true="-k" false="" kK} \
      ~{true="-K" false="" kK} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(compressionCompression) then ("--compression " +  '"' + compressionCompression + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-N" false="" nN}
  >>>
}