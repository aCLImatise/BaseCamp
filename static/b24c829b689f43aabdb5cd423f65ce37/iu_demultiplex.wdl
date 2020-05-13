version 1.0

task IuDemultiplex {
  input {
    File sampleSampleBarcodeMapping
    String r1R1
    String r2R2
    String indexIndex
    Boolean revRevCompBarcodes
    Directory outputOutputDir
  }
  command <<<
    iu-demultiplex \
      ~{if defined(sampleSampleBarcodeMapping) then ("--sample-barcode-mapping " +  '"' + sampleSampleBarcodeMapping + '"') else ""} \
      ~{if defined(r1R1) then ("--r1 " +  '"' + r1R1 + '"') else ""} \
      ~{if defined(r2R2) then ("--r2 " +  '"' + r2R2 + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{true="--rev-comp-barcodes" false="" revRevCompBarcodes} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}