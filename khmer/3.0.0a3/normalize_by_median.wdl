version 1.0

task NormalizeByMedian.py {
  input {
    String cutCutOff
    Boolean pairedPaired
    Boolean forceForceSingle
    String unpairedUnpairedReads
    File saveSaveGraph
    String reportReport
    String reportReportFrequency
    Boolean forceForce
    File outputOutput
    File loadLoadGraph
    Boolean gzipGzip
    Boolean bzipBzip
    String? inputInputSequenceFilename
  }
  command <<<
    normalize-by-median.py \
      ~{inputInputSequenceFilename} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--force_single" false="" forceForceSingle} \
      ~{if defined(unpairedUnpairedReads) then ("--unpaired-reads " +  '"' + unpairedUnpairedReads + '"') else ""} \
      ~{if defined(saveSaveGraph) then ("--savegraph " +  '"' + saveSaveGraph + '"') else ""} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{if defined(reportReportFrequency) then ("--report-frequency " +  '"' + reportReportFrequency + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(loadLoadGraph) then ("--loadgraph " +  '"' + loadLoadGraph + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}