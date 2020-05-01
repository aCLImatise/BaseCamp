version 1.0

task Jsearch {
  input {
    String wW
    String iI
    String eE
    String jJ
    Boolean oO
    Boolean vV
    String? sequenceSequenceDbFastA
    String? alignmentAlignmentFastA
  }
  command <<<
    jsearch \
      ~{sequenceSequenceDbFastA} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{alignmentAlignmentFastA}
  >>>
}