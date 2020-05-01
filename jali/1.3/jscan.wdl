version 1.0

task Jscan {
  input {
    String wW
    String iI
    String eE
    String jJ
    String lL
    Boolean oO
    Boolean vV
    String? sequenceSequenceFastA
    String? alignmentAlignmentDbProdom
  }
  command <<<
    jscan \
      ~{sequenceSequenceFastA} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{alignmentAlignmentDbProdom}
  >>>
}