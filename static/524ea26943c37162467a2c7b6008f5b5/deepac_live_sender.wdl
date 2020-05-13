version 1.0

task DeepacLiveSender {
  input {
    String readReadLength
    String seqSeqCycles
    String formatFormat
    String barcodesBarcodes
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
    deepac-live sender \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(seqSeqCycles) then ("--seq-cycles " +  '"' + seqSeqCycles + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
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