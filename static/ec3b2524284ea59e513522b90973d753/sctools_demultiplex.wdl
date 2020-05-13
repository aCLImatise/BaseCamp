version 1.0

task SctoolsDemultiplex {
  input {
    String barcodesBarcodesCsv
    String outputOutputDirectory
    Int alignmentAlignmentRecordsBatch
    Boolean bedBed
    String forbiddenForbiddenTags
    Int minMinMapq
  }
  command <<<
    sctools_demultiplex \
      ~{if defined(barcodesBarcodesCsv) then ("--barcodes-csv " +  '"' + barcodesBarcodesCsv + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(alignmentAlignmentRecordsBatch) then ("--alignment-records-batch " +  '"' + alignmentAlignmentRecordsBatch + '"') else ""} \
      ~{true="--bed" false="" bedBed} \
      ~{if defined(forbiddenForbiddenTags) then ("--forbidden-tags " +  '"' + forbiddenForbiddenTags + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""}
  >>>
}