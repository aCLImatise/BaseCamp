version 1.0

task Flexbar {
  input {
    Boolean fullFullHelp
    Boolean versionsVersions
    Boolean citeCite
    Int threadsThreads
    String targetTarget
    String readsReads
    String readReadS2
    String barcodesBarcodes
    String barcodeBarcodeReads
    Int barcodeBarcodeMinOverlap
    String barcodeBarcodeErrorRate
    String barcodeBarcodeTrimEnd
    String adaptersAdapters
    String adaptersAdapters2
    String adapterAdapterPreset
    Int adapterAdapterMinOverlap
    String adapterAdapterErrorRate
    String adapterAdapterTrimEnd
    String adapterAdapterPairOverlap
    Int maxMaxUncalled
    Int prePreTrimLeft
    Int prePreTrimRight
    Int minMinReadLength
    String qQTrim
    String qQTrimFormat
    Int qQTrimThreshold
    String hHTrimRight
    Int hHTrimMinLength
    String hHTrimErrorRate
    String alignAlignLog
    Boolean stdoutStdoutLog
    Boolean removalRemovalTags
  }
  command <<<
    flexbar \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--versions" false="" versionsVersions} \
      ~{true="--cite" false="" citeCite} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(readReadS2) then ("--reads2 " +  '"' + readReadS2 + '"') else ""} \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
      ~{if defined(barcodeBarcodeReads) then ("--barcode-reads " +  '"' + barcodeBarcodeReads + '"') else ""} \
      ~{if defined(barcodeBarcodeMinOverlap) then ("--barcode-min-overlap " +  '"' + barcodeBarcodeMinOverlap + '"') else ""} \
      ~{if defined(barcodeBarcodeErrorRate) then ("--barcode-error-rate " +  '"' + barcodeBarcodeErrorRate + '"') else ""} \
      ~{if defined(barcodeBarcodeTrimEnd) then ("--barcode-trim-end " +  '"' + barcodeBarcodeTrimEnd + '"') else ""} \
      ~{if defined(adaptersAdapters) then ("--adapters " +  '"' + adaptersAdapters + '"') else ""} \
      ~{if defined(adaptersAdapters2) then ("--adapters2 " +  '"' + adaptersAdapters2 + '"') else ""} \
      ~{if defined(adapterAdapterPreset) then ("--adapter-preset " +  '"' + adapterAdapterPreset + '"') else ""} \
      ~{if defined(adapterAdapterMinOverlap) then ("--adapter-min-overlap " +  '"' + adapterAdapterMinOverlap + '"') else ""} \
      ~{if defined(adapterAdapterErrorRate) then ("--adapter-error-rate " +  '"' + adapterAdapterErrorRate + '"') else ""} \
      ~{if defined(adapterAdapterTrimEnd) then ("--adapter-trim-end " +  '"' + adapterAdapterTrimEnd + '"') else ""} \
      ~{if defined(adapterAdapterPairOverlap) then ("--adapter-pair-overlap " +  '"' + adapterAdapterPairOverlap + '"') else ""} \
      ~{if defined(maxMaxUncalled) then ("--max-uncalled " +  '"' + maxMaxUncalled + '"') else ""} \
      ~{if defined(prePreTrimLeft) then ("--pre-trim-left " +  '"' + prePreTrimLeft + '"') else ""} \
      ~{if defined(prePreTrimRight) then ("--pre-trim-right " +  '"' + prePreTrimRight + '"') else ""} \
      ~{if defined(minMinReadLength) then ("--min-read-length " +  '"' + minMinReadLength + '"') else ""} \
      ~{if defined(qQTrim) then ("--qtrim " +  '"' + qQTrim + '"') else ""} \
      ~{if defined(qQTrimFormat) then ("--qtrim-format " +  '"' + qQTrimFormat + '"') else ""} \
      ~{if defined(qQTrimThreshold) then ("--qtrim-threshold " +  '"' + qQTrimThreshold + '"') else ""} \
      ~{if defined(hHTrimRight) then ("--htrim-right " +  '"' + hHTrimRight + '"') else ""} \
      ~{if defined(hHTrimMinLength) then ("--htrim-min-length " +  '"' + hHTrimMinLength + '"') else ""} \
      ~{if defined(hHTrimErrorRate) then ("--htrim-error-rate " +  '"' + hHTrimErrorRate + '"') else ""} \
      ~{if defined(alignAlignLog) then ("--align-log " +  '"' + alignAlignLog + '"') else ""} \
      ~{true="--stdout-log" false="" stdoutStdoutLog} \
      ~{true="--removal-tags" false="" removalRemovalTags}
  >>>
}