version 1.0

task RNAdistance {
  input {
    Boolean detailedDetailedHelp
    String distanceDistance
    String compareCompare
    Boolean shapiroShapiro
    Boolean backtrackBacktrack
  }
  command <<<
    RNAdistance \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(compareCompare) then ("--compare " +  '"' + compareCompare + '"') else ""} \
      ~{true="--shapiro" false="" shapiroShapiro} \
      ~{true="--backtrack" false="" backtrackBacktrack}
  >>>
}