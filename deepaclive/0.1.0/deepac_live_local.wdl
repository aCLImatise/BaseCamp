version 1.0

task DeepacLiveLocal {
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
    String senderSenderInput
    String senderSenderOutput
    String nNCpusSend
    Boolean allAll
    Boolean mappedMapped
    String remoteRemote
    String keyKey
    String portPort
  }
  command <<<
    deepac-live local \
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
      ~{true="--discard-neg" false="" discardDiscardNeg} \
      ~{if defined(senderSenderInput) then ("--sender-input " +  '"' + senderSenderInput + '"') else ""} \
      ~{if defined(senderSenderOutput) then ("--sender-output " +  '"' + senderSenderOutput + '"') else ""} \
      ~{if defined(nNCpusSend) then ("--n-cpus-send " +  '"' + nNCpusSend + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{true="--mapped" false="" mappedMapped} \
      ~{if defined(remoteRemote) then ("--remote " +  '"' + remoteRemote + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""}
  >>>
}