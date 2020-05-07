version 1.0

task AlignmentToolsRmPartialseq {
  input {
    String alignmentAlignmentMode
    String minMinGaps
    String knnKnn
    String alignmentAlignmentOut
  }
  command <<<
    AlignmentTools rm-partialseq \
      ~{if defined(alignmentAlignmentMode) then ("--alignment-mode " +  '"' + alignmentAlignmentMode + '"') else ""} \
      ~{if defined(minMinGaps) then ("--min_gaps " +  '"' + minMinGaps + '"') else ""} \
      ~{if defined(knnKnn) then ("--knn " +  '"' + knnKnn + '"') else ""} \
      ~{if defined(alignmentAlignmentOut) then ("--alignment-out " +  '"' + alignmentAlignmentOut + '"') else ""}
  >>>
}