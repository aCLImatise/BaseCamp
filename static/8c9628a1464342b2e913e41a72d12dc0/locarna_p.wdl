version 1.0

task LocarnaP {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean extendedExtendedPf
    Boolean quadQuadPf
    Boolean includeIncludeAmInBm
    Boolean stopwatchStopwatch
    Boolean relaxedRelaxedAnchors
    String? inputInput1
    String? inputInput2
  }
  command <<<
    locarna_p \
      ~{inputInput1} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--extended-pf" false="" extendedExtendedPf} \
      ~{true="--quad-pf" false="" quadQuadPf} \
      ~{true="--include-am-in-bm" false="" includeIncludeAmInBm} \
      ~{true="--stopwatch" false="" stopwatchStopwatch} \
      ~{true="--relaxed-anchors" false="" relaxedRelaxedAnchors} \
      ~{inputInput2}
  >>>
}