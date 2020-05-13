version 1.0

task DeepacLiveRefilter {
  input {
    String readReadLength
    String seqSeqCycles
    String formatFormat
    String barcodesBarcodes
    String thresholdThreshold
    String fastFastAInput
    String predsPredsInput
    String reReFilterOutput
    Boolean discardDiscardNeg
  }
  command <<<
    deepac-live refilter \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(seqSeqCycles) then ("--seq-cycles " +  '"' + seqSeqCycles + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(fastFastAInput) then ("--fasta-input " +  '"' + fastFastAInput + '"') else ""} \
      ~{if defined(predsPredsInput) then ("--preds-input " +  '"' + predsPredsInput + '"') else ""} \
      ~{if defined(reReFilterOutput) then ("--refilter-output " +  '"' + reReFilterOutput + '"') else ""} \
      ~{true="--discard-neg" false="" discardDiscardNeg}
  >>>
}