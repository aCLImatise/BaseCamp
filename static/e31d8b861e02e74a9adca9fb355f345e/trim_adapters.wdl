version 1.0

task TrimAdapters {
  input {
    String maxMaxEditDistance
    String fudgeFudge
    String trimTrimFromStart
    String rcRcLength
    Boolean verboseVerbose
    String? forwardForward
    String? reverseReverse
  }
  command <<<
    trim_adapters \
      ~{forwardForward} \
      ~{if defined(maxMaxEditDistance) then ("--max-edit-distance " +  '"' + maxMaxEditDistance + '"') else ""} \
      ~{if defined(fudgeFudge) then ("--fudge " +  '"' + fudgeFudge + '"') else ""} \
      ~{if defined(trimTrimFromStart) then ("--trim-from-start " +  '"' + trimTrimFromStart + '"') else ""} \
      ~{if defined(rcRcLength) then ("--rc-length " +  '"' + rcRcLength + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{reverseReverse}
  >>>
}