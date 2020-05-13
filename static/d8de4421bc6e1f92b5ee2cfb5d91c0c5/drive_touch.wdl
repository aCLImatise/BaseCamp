version 1.0

task DriveTouch {
  input {
    Int depthDepth
    String durationDuration
    String formatFormat
    Boolean hiddenHidden
    Boolean idId
    Boolean matchesMatches
    Boolean quietQuiet
    Boolean recursiveRecursive
    String timeTime
    Boolean verboseVerbose
  }
  command <<<
    drive touch \
      ~{if defined(depthDepth) then ("-depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(durationDuration) then ("-duration " +  '"' + durationDuration + '"') else ""} \
      ~{if defined(formatFormat) then ("-format " +  '"' + formatFormat + '"') else ""} \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-matches" false="" matchesMatches} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-recursive" false="" recursiveRecursive} \
      ~{if defined(timeTime) then ("-time " +  '"' + timeTime + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}