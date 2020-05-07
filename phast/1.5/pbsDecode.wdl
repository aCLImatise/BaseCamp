version 1.0

task PbsDecode {
  input {
    String startStart
    String endEnd
    Boolean discardDiscardGaps
  }
  command <<<
    pbsDecode \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{true="--discard-gaps" false="" discardDiscardGaps}
  >>>
}