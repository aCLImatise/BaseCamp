version 1.0

task Kreport2krona.py {
  input {
    String reportReportFile
    String outputOutput
    Boolean intermediateIntermediateRanks
    Boolean noNoIntermediateRanks
  }
  command <<<
    kreport2krona.py \
      ~{if defined(reportReportFile) then ("--report-file " +  '"' + reportReportFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--intermediate-ranks" false="" intermediateIntermediateRanks} \
      ~{true="--no-intermediate-ranks" false="" noNoIntermediateRanks}
  >>>
}