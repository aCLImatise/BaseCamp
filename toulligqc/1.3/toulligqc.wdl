version 1.0

task Toulligqc {
  input {
    File confConfFile
    String reportReportName
    String fast5Fast5Source
    String sequencingSequencingSummarySource
    String sequencingSequencingSummary1dsqrSource
    String albacoreAlbacorePipelineSource
    String fastFastQSource
    String telemetryTelemetrySource
    String outputOutput
    Boolean barcodingBarcoding
    String sampleSampleSheetFile
    String barcodesBarcodes
    Boolean quietQuiet
  }
  command <<<
    toulligqc \
      ~{if defined(confConfFile) then ("--conf-file " +  '"' + confConfFile + '"') else ""} \
      ~{if defined(reportReportName) then ("--report-name " +  '"' + reportReportName + '"') else ""} \
      ~{if defined(fast5Fast5Source) then ("--fast5-source " +  '"' + fast5Fast5Source + '"') else ""} \
      ~{if defined(sequencingSequencingSummarySource) then ("--sequencing-summary-source " +  '"' + sequencingSequencingSummarySource + '"') else ""} \
      ~{if defined(sequencingSequencingSummary1dsqrSource) then ("--sequencing-summary-1dsqr-source " +  '"' + sequencingSequencingSummary1dsqrSource + '"') else ""} \
      ~{if defined(albacoreAlbacorePipelineSource) then ("--albacore-pipeline-source " +  '"' + albacoreAlbacorePipelineSource + '"') else ""} \
      ~{if defined(fastFastQSource) then ("--fastq-source " +  '"' + fastFastQSource + '"') else ""} \
      ~{if defined(telemetryTelemetrySource) then ("--telemetry-source " +  '"' + telemetryTelemetrySource + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--barcoding" false="" barcodingBarcoding} \
      ~{if defined(sampleSampleSheetFile) then ("--samplesheet-file " +  '"' + sampleSampleSheetFile + '"') else ""} \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}