version 1.0

task Jali {
  input {
    String wW
    String iI
    String eE
    String jJ
    String fF
    Boolean pP
    Boolean oO
    Boolean vV
    String? sequenceSequenceFastA
    String? alignmentAlignmentFastA
  }
  command <<<
    jali \
      ~{sequenceSequenceFastA} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{alignmentAlignmentFastA}
  >>>
}