version 1.0

task BxtoolsSplit {
  input {
    Boolean verboseVerbose
    Boolean analysisAnalysisId
    Boolean noNoOutput
    Boolean minMinReads
    Boolean tagTag
  }
  command <<<
    bxtools split \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--analysis-id" false="" analysisAnalysisId} \
      ~{true="--no-output" false="" noNoOutput} \
      ~{true="--min-reads" false="" minMinReads} \
      ~{true="--tag" false="" tagTag}
  >>>
}