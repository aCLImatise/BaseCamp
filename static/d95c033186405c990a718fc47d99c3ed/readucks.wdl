version 1.0

task Readucks {
  input {
    String inputInput
    String outputOutputDir
    Boolean binBinBarcodes
    Boolean annotateAnnotateFiles
    Boolean extendedExtendedInfo
    Boolean summarySummaryInfo
    String modeMode
    String prefixPrefix
    String threadsThreads
    String numNumReadsInBatch
    String checkCheckReads
    String adapterAdapterThreshold
    String verbosityVerbosity
    Boolean requireRequireTwoBarcodes
    Boolean nativeNativeBarcodes
    Boolean pcrPcrBarcodes
    Boolean rapidRapidBarcodes
    Array[String]+ limitLimitBarcodesTo
    String thresholdThreshold
    String secondarySecondaryThreshold
    String scoreScoreDiff
    String scoringScoringScheme
  }
  command <<<
    readucks \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--bin_barcodes" false="" binBinBarcodes} \
      ~{true="--annotate_files" false="" annotateAnnotateFiles} \
      ~{true="--extended_info" false="" extendedExtendedInfo} \
      ~{true="--summary_info" false="" summarySummaryInfo} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(numNumReadsInBatch) then ("--num_reads_in_batch " +  '"' + numNumReadsInBatch + '"') else ""} \
      ~{if defined(checkCheckReads) then ("--check_reads " +  '"' + checkCheckReads + '"') else ""} \
      ~{if defined(adapterAdapterThreshold) then ("--adapter_threshold " +  '"' + adapterAdapterThreshold + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--require_two_barcodes" false="" requireRequireTwoBarcodes} \
      ~{true="--native_barcodes" false="" nativeNativeBarcodes} \
      ~{true="--pcr_barcodes" false="" pcrPcrBarcodes} \
      ~{true="--rapid_barcodes" false="" rapidRapidBarcodes} \
      ~{if defined(limitLimitBarcodesTo) then ("--limit_barcodes_to " +  '"' + limitLimitBarcodesTo + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(secondarySecondaryThreshold) then ("--secondary_threshold " +  '"' + secondarySecondaryThreshold + '"') else ""} \
      ~{if defined(scoreScoreDiff) then ("--score_diff " +  '"' + scoreScoreDiff + '"') else ""} \
      ~{if defined(scoringScoringScheme) then ("--scoring_scheme " +  '"' + scoringScoringScheme + '"') else ""}
  >>>
}