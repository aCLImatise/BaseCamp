version 1.0

task IgdiscoverUpstream {
  input {
    String maxMaxErrorPercentage
    String maxMaxFr1Errors
    String maxMaxCdr1Errors
    String minMinConsensusSize
    String consensusConsensusThreshold
    Boolean noNoAmbiguous
    Boolean partPart
    Boolean debugDebug
  }
  command <<<
    igdiscover upstream \
      ~{if defined(maxMaxErrorPercentage) then ("--max-error-percentage " +  '"' + maxMaxErrorPercentage + '"') else ""} \
      ~{if defined(maxMaxFr1Errors) then ("--max-FR1-errors " +  '"' + maxMaxFr1Errors + '"') else ""} \
      ~{if defined(maxMaxCdr1Errors) then ("--max-CDR1-errors " +  '"' + maxMaxCdr1Errors + '"') else ""} \
      ~{if defined(minMinConsensusSize) then ("--min-consensus-size " +  '"' + minMinConsensusSize + '"') else ""} \
      ~{if defined(consensusConsensusThreshold) then ("--consensus-threshold " +  '"' + consensusConsensusThreshold + '"') else ""} \
      ~{true="--no-ambiguous" false="" noNoAmbiguous} \
      ~{true="--part" false="" partPart} \
      ~{true="--debug" false="" debugDebug}
  >>>
}