version 1.0

task Samblaster {
  input {
    Boolean addAddMateTags
    Boolean ignoreIgnoreUnMated
    Boolean maxMaxReadLength
    Boolean maxMaxSplitCount
    Int maxMaxUnmappedBases
    Boolean minMinInDelSize
    Boolean minMinNonOverlap
    Boolean minMinClipSize
  }
  command <<<
    samblaster \
      ~{true="--addMateTags" false="" addAddMateTags} \
      ~{true="--ignoreUnmated" false="" ignoreIgnoreUnMated} \
      ~{true="--maxReadLength" false="" maxMaxReadLength} \
      ~{true="--maxSplitCount" false="" maxMaxSplitCount} \
      ~{if defined(maxMaxUnmappedBases) then ("--maxUnmappedBases " +  '"' + maxMaxUnmappedBases + '"') else ""} \
      ~{true="--minIndelSize" false="" minMinInDelSize} \
      ~{true="--minNonOverlap" false="" minMinNonOverlap} \
      ~{true="--minClipSize" false="" minMinClipSize}
  >>>
}