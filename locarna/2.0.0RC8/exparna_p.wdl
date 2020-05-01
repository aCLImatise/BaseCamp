version 1.0

task ExparnaP {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean inInExactStructMatch
    Boolean addAddFilter
    Boolean noNoChaining
    Boolean relaxedRelaxedAnchors
    Boolean stopwatchStopwatch
    String? inputInput1
    String? inputInput2
  }
  command <<<
    exparna_p \
      ~{inputInput1} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--inexact-struct-match" false="" inInExactStructMatch} \
      ~{true="--add-filter" false="" addAddFilter} \
      ~{true="--no-chaining" false="" noNoChaining} \
      ~{true="--relaxed-anchors" false="" relaxedRelaxedAnchors} \
      ~{true="--stopwatch" false="" stopwatchStopwatch} \
      ~{inputInput2}
  >>>
}