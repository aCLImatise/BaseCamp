version 1.0

task Blat {
  input {
    String dotsDots
    Boolean trimTrimT
    Boolean notNotRima
    Boolean trimTrimHardA
    Boolean fastFastMap
    String outOut
    Boolean fineFine
    String maxMaxIntron
    Boolean extendExtendThroughN
  }
  command <<<
    blat \
      ~{if defined(dotsDots) then ("-dots " +  '"' + dotsDots + '"') else ""} \
      ~{true="-trimT" false="" trimTrimT} \
      ~{true="-noTrimA" false="" notNotRima} \
      ~{true="-trimHardA" false="" trimTrimHardA} \
      ~{true="-fastMap" false="" fastFastMap} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-fine" false="" fineFine} \
      ~{if defined(maxMaxIntron) then ("-maxIntron " +  '"' + maxMaxIntron + '"') else ""} \
      ~{true="-extendThroughN" false="" extendExtendThroughN}
  >>>
}