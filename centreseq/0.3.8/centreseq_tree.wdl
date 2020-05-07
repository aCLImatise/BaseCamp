version 1.0

task CentreseqTree {
  input {
    File summarySummaryReport
    File proProKkADir
    File outdirOutdir
    Float percentilePercentile
    Int nNCpu
    Boolean verboseVerbose
  }
  command <<<
    centreseq tree \
      ~{if defined(summarySummaryReport) then ("--summary-report " +  '"' + summarySummaryReport + '"') else ""} \
      ~{if defined(proProKkADir) then ("--prokka-dir " +  '"' + proProKkADir + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(percentilePercentile) then ("--percentile " +  '"' + percentilePercentile + '"') else ""} \
      ~{if defined(nNCpu) then ("--n-cpu " +  '"' + nNCpu + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}