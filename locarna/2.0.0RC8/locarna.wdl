version 1.0

task Locarna {
  input {
    Boolean galaxyGalaxyXml
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean stackingStacking
    Boolean newNewStacking
    Boolean extendedExtendedPf
    Boolean quadQuadPf
    Boolean localLocalOutput
    Boolean localLocalFileOutput
    Boolean posPosOutput
    Boolean writeWriteStructure
    Boolean scoreScoreComponents
    Boolean stopwatchStopwatch
    File writeWriteMatchProbs
    File writeWriteTraceProbs
    File readReadMatchProbs
    File writeWriteArcMatchScores
    File readReadArcMatchScores
    File readReadArcMatchProbs
    Boolean relaxedRelaxedAnchors
    String? inputInput1
    String? inputInput2
  }
  command <<<
    locarna \
      ~{inputInput1} \
      ~{true="--galaxy-xml" false="" galaxyGalaxyXml} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--stacking" false="" stackingStacking} \
      ~{true="--new-stacking" false="" newNewStacking} \
      ~{true="--extended-pf" false="" extendedExtendedPf} \
      ~{true="--quad-pf" false="" quadQuadPf} \
      ~{true="--local-output" false="" localLocalOutput} \
      ~{true="--local-file-output" false="" localLocalFileOutput} \
      ~{true="--pos-output" false="" posPosOutput} \
      ~{true="--write-structure" false="" writeWriteStructure} \
      ~{true="--score-components" false="" scoreScoreComponents} \
      ~{true="--stopwatch" false="" stopwatchStopwatch} \
      ~{if defined(writeWriteMatchProbs) then ("--write-match-probs " +  '"' + writeWriteMatchProbs + '"') else ""} \
      ~{if defined(writeWriteTraceProbs) then ("--write-trace-probs " +  '"' + writeWriteTraceProbs + '"') else ""} \
      ~{if defined(readReadMatchProbs) then ("--read-match-probs " +  '"' + readReadMatchProbs + '"') else ""} \
      ~{if defined(writeWriteArcMatchScores) then ("--write-arcmatch-scores " +  '"' + writeWriteArcMatchScores + '"') else ""} \
      ~{if defined(readReadArcMatchScores) then ("--read-arcmatch-scores " +  '"' + readReadArcMatchScores + '"') else ""} \
      ~{if defined(readReadArcMatchProbs) then ("--read-arcmatch-probs " +  '"' + readReadArcMatchProbs + '"') else ""} \
      ~{true="--relaxed-anchors" false="" relaxedRelaxedAnchors} \
      ~{inputInput2}
  >>>
}