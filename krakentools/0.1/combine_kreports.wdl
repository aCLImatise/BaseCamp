version 1.0

task CombineKreports.py {
  input {
    Array[String]+ reportReportFiles
    String outputOutput
    Boolean displayDisplayHeaders
    Boolean noNoHeaders
    Array[String]+ sampleSampleNames
    Boolean onlyOnlyCombined
  }
  command <<<
    combine_kreports.py \
      ~{if defined(reportReportFiles) then ("--report-files " +  '"' + reportReportFiles + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--display-headers" false="" displayDisplayHeaders} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(sampleSampleNames) then ("--sample-names " +  '"' + sampleSampleNames + '"') else ""} \
      ~{true="--only-combined" false="" onlyOnlyCombined}
  >>>
}