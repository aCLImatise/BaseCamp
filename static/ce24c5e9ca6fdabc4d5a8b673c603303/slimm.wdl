version 1.0

task Slimm {
  input {
    Boolean versionVersionCheck
    String outputOutputPrefix
    Int binBinWidth
    Int minMinReads
    String rankRank
    String covCovCutOff
    String abundanceAbundanceCutOff
    Boolean directoryDirectory
    Boolean rawRawOutput
    Boolean coverageCoverageOutput
    Boolean verboseVerbose
  }
  command <<<
    slimm \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(binBinWidth) then ("--bin-width " +  '"' + binBinWidth + '"') else ""} \
      ~{if defined(minMinReads) then ("--min-reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(rankRank) then ("--rank " +  '"' + rankRank + '"') else ""} \
      ~{if defined(covCovCutOff) then ("--cov-cut-off " +  '"' + covCovCutOff + '"') else ""} \
      ~{if defined(abundanceAbundanceCutOff) then ("--abundance-cut-off " +  '"' + abundanceAbundanceCutOff + '"') else ""} \
      ~{true="--directory" false="" directoryDirectory} \
      ~{true="--raw-output" false="" rawRawOutput} \
      ~{true="--coverage-output" false="" coverageCoverageOutput} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}