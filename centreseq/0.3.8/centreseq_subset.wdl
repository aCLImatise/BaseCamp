version 1.0

task CentreseqSubset {
  input {
    File inputInputSamples
    File summarySummaryReport
    File outOutPath
  }
  command <<<
    centreseq subset \
      ~{if defined(inputInputSamples) then ("--input-samples " +  '"' + inputInputSamples + '"') else ""} \
      ~{if defined(summarySummaryReport) then ("--summary-report " +  '"' + summarySummaryReport + '"') else ""} \
      ~{if defined(outOutPath) then ("--outpath " +  '"' + outOutPath + '"') else ""}
  >>>
}