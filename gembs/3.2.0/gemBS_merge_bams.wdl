version 1.0

task GemBSMergeBams {
  input {
    String threadsThreads
    String sampleSampleName
    String barcodeBarcode
    Boolean removeRemove
    Boolean dryDryRun
    String jsonJson
    Boolean ignoreIgnoreDb
  }
  command <<<
    gemBS merge-bams \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample_name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(barcodeBarcode) then ("--barcode " +  '"' + barcodeBarcode + '"') else ""} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""} \
      ~{true="--ignore-db" false="" ignoreIgnoreDb}
  >>>
}