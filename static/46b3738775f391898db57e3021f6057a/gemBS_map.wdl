version 1.0

task GemBSMap {
  input {
    String datasetDataset
    String sampleSampleName
    String barcodeBarcode
    File tmpTmpDir
    String threadsThreads
    String typeType
    Boolean pairedPairedEnd
    Boolean removeRemove
    Boolean readReadNonStranded
    String underUnderConversionSequence
    String overOverConversionSequence
    Boolean nonNonBs
    Boolean noNoMerge
    Boolean dryDryRun
    String jsonJson
    Boolean ignoreIgnoreDb
  }
  command <<<
    gemBS map \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample-name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(barcodeBarcode) then ("--barcode " +  '"' + barcodeBarcode + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--read-non-stranded" false="" readReadNonStranded} \
      ~{if defined(underUnderConversionSequence) then ("--underconversion-sequence " +  '"' + underUnderConversionSequence + '"') else ""} \
      ~{if defined(overOverConversionSequence) then ("--overconversion-sequence " +  '"' + overOverConversionSequence + '"') else ""} \
      ~{true="--non-bs" false="" nonNonBs} \
      ~{true="--no-merge" false="" noNoMerge} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""} \
      ~{true="--ignore-db" false="" ignoreIgnoreDb}
  >>>
}