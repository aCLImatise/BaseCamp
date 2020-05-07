version 1.0

task BarcodeSplit {
  input {
    Boolean summarySummaryFile
    Boolean barcodeBarcodeFile
    String outputOutputDir
    Boolean outputOutputUnclassified
    Int minMinBarcodePercent
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    Barcode_split \
      ~{true="--summary_file" false="" summarySummaryFile} \
      ~{true="--barcode_file" false="" barcodeBarcodeFile} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--output_unclassified" false="" outputOutputUnclassified} \
      ~{if defined(minMinBarcodePercent) then ("--min_barcode_percent " +  '"' + minMinBarcodePercent + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}