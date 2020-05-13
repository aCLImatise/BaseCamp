version 1.0

task DeepacLiveReceiver {
  input {
    String readReadLength
    String seqSeqCycles
    String formatFormat
    String barcodesBarcodes
    String commandCommand
    Boolean customCustom
    String modelModel
    String thresholdThreshold
    String receiverReceiverInput
    String receiverReceiverOutput
    String nNCpusRec
    String nNGpus
    Boolean discardDiscardNeg
  }
  command <<<
    deepac-live receiver \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(seqSeqCycles) then ("--seq-cycles " +  '"' + seqSeqCycles + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
      ~{if defined(commandCommand) then ("--command " +  '"' + commandCommand + '"') else ""} \
      ~{true="--custom" false="" customCustom} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(receiverReceiverInput) then ("--receiver-input " +  '"' + receiverReceiverInput + '"') else ""} \
      ~{if defined(receiverReceiverOutput) then ("--receiver-output " +  '"' + receiverReceiverOutput + '"') else ""} \
      ~{if defined(nNCpusRec) then ("--n-cpus-rec " +  '"' + nNCpusRec + '"') else ""} \
      ~{if defined(nNGpus) then ("--n-gpus " +  '"' + nNGpus + '"') else ""} \
      ~{true="--discard-neg" false="" discardDiscardNeg}
  >>>
}