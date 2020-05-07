version 1.0

task ReportAlignmentDifferences {
  input {
    String? reportReportAlignmentDifferences
  }
  command <<<
    reportAlignmentDifferences \
      ~{reportReportAlignmentDifferences}
  >>>
}