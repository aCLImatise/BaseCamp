version 1.0

task PycoQC {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean summarySummaryFile
    Boolean barcodeBarcodeFile
    Boolean bamBamFile
    String htmlHtmlOutfile
    String jsonJsonOutfile
    Int minMinPassQual
    Int minMinPassLen
    Boolean filterFilterCalibration
    Boolean filterFilterDuplicated
    Int minMinBarcodePercent
    String reportReportTitle
    String templateTemplateFile
    String configConfigFile
    String sampleSample
    Boolean defaultDefaultConfig
  }
  command <<<
    pycoQC \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--summary_file" false="" summarySummaryFile} \
      ~{true="--barcode_file" false="" barcodeBarcodeFile} \
      ~{true="--bam_file" false="" bamBamFile} \
      ~{if defined(htmlHtmlOutfile) then ("--html_outfile " +  '"' + htmlHtmlOutfile + '"') else ""} \
      ~{if defined(jsonJsonOutfile) then ("--json_outfile " +  '"' + jsonJsonOutfile + '"') else ""} \
      ~{if defined(minMinPassQual) then ("--min_pass_qual " +  '"' + minMinPassQual + '"') else ""} \
      ~{if defined(minMinPassLen) then ("--min_pass_len " +  '"' + minMinPassLen + '"') else ""} \
      ~{true="--filter_calibration" false="" filterFilterCalibration} \
      ~{true="--filter_duplicated" false="" filterFilterDuplicated} \
      ~{if defined(minMinBarcodePercent) then ("--min_barcode_percent " +  '"' + minMinBarcodePercent + '"') else ""} \
      ~{if defined(reportReportTitle) then ("--report_title " +  '"' + reportReportTitle + '"') else ""} \
      ~{if defined(templateTemplateFile) then ("--template_file " +  '"' + templateTemplateFile + '"') else ""} \
      ~{if defined(configConfigFile) then ("--config_file " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--default_config" false="" defaultDefaultConfig}
  >>>
}