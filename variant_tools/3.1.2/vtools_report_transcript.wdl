version 1.0

task VtoolsReportTranscript {
  input {
    Boolean buildBuild
    Boolean strandStrandOnly
    Boolean firstFirstTranscript
    Boolean zeroZeroBased
    Boolean vV
    String? regionsRegions
  }
  command <<<
    vtools_report transcript \
      ~{regionsRegions} \
      ~{true="--build" false="" buildBuild} \
      ~{true="--strand_only" false="" strandStrandOnly} \
      ~{true="--first_transcript" false="" firstFirstTranscript} \
      ~{true="--zero_based" false="" zeroZeroBased} \
      ~{true="-v" false="" vV}
  >>>
}