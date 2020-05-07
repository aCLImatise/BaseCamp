version 1.0

task Porechop {
  input {
    String inputInput
    String outputOutput
    Boolean formatFormat
    String verbosityVerbosity
    String threadsThreads
    String barcodeBarcodeDir
    String barcodeBarcodeThreshold
    String barcodeBarcodeDiff
    Boolean requireRequireTwoBarcodes
    Boolean untrimmedUntrimmed
    Boolean discardDiscardUnassigned
    String adapterAdapterThreshold
    String checkCheckReads
    String scoringScoringScheme
    String endEndSize
    Int minMinTrimSize
    String extraExtraEndTrim
    String endEndThreshold
    Boolean noNoSplit
    Boolean discardDiscardMiddle
    String middleMiddleThreshold
    String extraExtraMiddleTrimGoodSide
    String extraExtraMiddleTrimBadSide
    Int minMinSplitReadSize
  }
  command <<<
    porechop \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--format" false="" formatFormat} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(barcodeBarcodeDir) then ("--barcode_dir " +  '"' + barcodeBarcodeDir + '"') else ""} \
      ~{if defined(barcodeBarcodeThreshold) then ("--barcode_threshold " +  '"' + barcodeBarcodeThreshold + '"') else ""} \
      ~{if defined(barcodeBarcodeDiff) then ("--barcode_diff " +  '"' + barcodeBarcodeDiff + '"') else ""} \
      ~{true="--require_two_barcodes" false="" requireRequireTwoBarcodes} \
      ~{true="--untrimmed" false="" untrimmedUntrimmed} \
      ~{true="--discard_unassigned" false="" discardDiscardUnassigned} \
      ~{if defined(adapterAdapterThreshold) then ("--adapter_threshold " +  '"' + adapterAdapterThreshold + '"') else ""} \
      ~{if defined(checkCheckReads) then ("--check_reads " +  '"' + checkCheckReads + '"') else ""} \
      ~{if defined(scoringScoringScheme) then ("--scoring_scheme " +  '"' + scoringScoringScheme + '"') else ""} \
      ~{if defined(endEndSize) then ("--end_size " +  '"' + endEndSize + '"') else ""} \
      ~{if defined(minMinTrimSize) then ("--min_trim_size " +  '"' + minMinTrimSize + '"') else ""} \
      ~{if defined(extraExtraEndTrim) then ("--extra_end_trim " +  '"' + extraExtraEndTrim + '"') else ""} \
      ~{if defined(endEndThreshold) then ("--end_threshold " +  '"' + endEndThreshold + '"') else ""} \
      ~{true="--no_split" false="" noNoSplit} \
      ~{true="--discard_middle" false="" discardDiscardMiddle} \
      ~{if defined(middleMiddleThreshold) then ("--middle_threshold " +  '"' + middleMiddleThreshold + '"') else ""} \
      ~{if defined(extraExtraMiddleTrimGoodSide) then ("--extra_middle_trim_good_side " +  '"' + extraExtraMiddleTrimGoodSide + '"') else ""} \
      ~{if defined(extraExtraMiddleTrimBadSide) then ("--extra_middle_trim_bad_side " +  '"' + extraExtraMiddleTrimBadSide + '"') else ""} \
      ~{if defined(minMinSplitReadSize) then ("--min_split_read_size " +  '"' + minMinSplitReadSize + '"') else ""}
  >>>
}