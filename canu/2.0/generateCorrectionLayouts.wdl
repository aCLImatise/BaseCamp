version 1.0

task GenerateCorrectionLayouts {
  input {
    String sS
    String oO
    String scoresScores
    String cC
    Boolean vV
    Boolean dD
    String bB
    String eE
    Int elEl
    String eeEe
    String ecEc
  }
  command <<<
    generateCorrectionLayouts \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(scoresScores) then ("-scores " +  '"' + scoresScores + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{true="-V" false="" vV} \
      ~{true="-D" false="" dD} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(elEl) then ("-eL " +  '"' + elEl + '"') else ""} \
      ~{if defined(eeEe) then ("-eE " +  '"' + eeEe + '"') else ""} \
      ~{if defined(ecEc) then ("-eC " +  '"' + ecEc + '"') else ""}
  >>>
}