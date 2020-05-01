version 1.0

task AnviScriptGetShortReadsMatchingSomething {
  input {
    Int minMinRemainderLength
    String sampleSampleName
    File outputOutputDirectory
    Boolean reportReportRaw
    Int stopStopAfter
    String? fastFastQFiles
  }
  command <<<
    anvi-script-get-short-reads-matching-something \
      ~{fastFastQFiles} \
      ~{if defined(minMinRemainderLength) then ("--min-remainder-length " +  '"' + minMinRemainderLength + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample-name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--report-raw" false="" reportReportRaw} \
      ~{if defined(stopStopAfter) then ("--stop-after " +  '"' + stopStopAfter + '"') else ""}
  >>>
}