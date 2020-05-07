version 1.0

task Kreport2mpa.py {
  input {
    String reportReportFile
    String outputOutput
    Boolean displayDisplayHeader
    Boolean intermediateIntermediateRanks
    Boolean noNoIntermediateRanks
  }
  command <<<
    kreport2mpa.py \
      ~{if defined(reportReportFile) then ("--report-file " +  '"' + reportReportFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--display-header" false="" displayDisplayHeader} \
      ~{true="--intermediate-ranks" false="" intermediateIntermediateRanks} \
      ~{true="--no-intermediate-ranks" false="" noNoIntermediateRanks}
  >>>
}