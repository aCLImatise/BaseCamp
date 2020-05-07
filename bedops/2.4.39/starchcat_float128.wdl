version 1.0

task StarchcatFloat128 {
  input {
    Boolean noteNote
    Boolean bzip2Bzip2
    Boolean omitOmitSignature
    String reportReportProgress
  }
  command <<<
    starchcat-float128 \
      ~{true="--note" false="" noteNote} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--omit-signature" false="" omitOmitSignature} \
      ~{if defined(reportReportProgress) then ("--report-progress " +  '"' + reportReportProgress + '"') else ""}
  >>>
}