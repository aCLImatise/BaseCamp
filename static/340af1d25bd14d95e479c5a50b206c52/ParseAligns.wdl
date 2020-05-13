version 1.0

task ParseAligns {
  input {
    String minMinAlign
    String distDist
    String fragFrag
    File histHist
    Boolean samSam
    Boolean kKAligner
    String coverCover
    Boolean verboseVerbose
  }
  command <<<
    ParseAligns \
      ~{if defined(minMinAlign) then ("--min-align " +  '"' + minMinAlign + '"') else ""} \
      ~{if defined(distDist) then ("--dist " +  '"' + distDist + '"') else ""} \
      ~{if defined(fragFrag) then ("--frag " +  '"' + fragFrag + '"') else ""} \
      ~{if defined(histHist) then ("--hist " +  '"' + histHist + '"') else ""} \
      ~{true="--sam" false="" samSam} \
      ~{true="--kaligner" false="" kKAligner} \
      ~{if defined(coverCover) then ("--cover " +  '"' + coverCover + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}