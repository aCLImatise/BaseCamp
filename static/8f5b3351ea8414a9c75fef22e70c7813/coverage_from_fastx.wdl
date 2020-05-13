version 1.0

task CoverageFromFastx {
  input {
    String coverageCoverage
    Boolean longestLongest
    String? baseBaseCalls
    String? refRefLen
  }
  command <<<
    coverage_from_fastx \
      ~{baseBaseCalls} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{true="--longest" false="" longestLongest} \
      ~{refRefLen}
  >>>
}