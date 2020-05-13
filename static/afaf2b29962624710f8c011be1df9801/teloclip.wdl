version 1.0

task Teloclip {
  input {
    String refRefIdx
    Int minMinClip
    Int maxMaxBreak
    String motifsMotifs
    Boolean norevNorev
    Boolean noNoPoly
    Boolean matchMatchAny
  }
  command <<<
    teloclip \
      ~{if defined(refRefIdx) then ("--refIdx " +  '"' + refRefIdx + '"') else ""} \
      ~{if defined(minMinClip) then ("--minClip " +  '"' + minMinClip + '"') else ""} \
      ~{if defined(maxMaxBreak) then ("--maxBreak " +  '"' + maxMaxBreak + '"') else ""} \
      ~{if defined(motifsMotifs) then ("--motifs " +  '"' + motifsMotifs + '"') else ""} \
      ~{true="--noRev" false="" norevNorev} \
      ~{true="--noPoly" false="" noNoPoly} \
      ~{true="--matchAny" false="" matchMatchAny}
  >>>
}