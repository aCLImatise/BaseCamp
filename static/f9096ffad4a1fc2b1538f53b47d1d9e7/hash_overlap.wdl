version 1.0

task HashOverlap {
  input {
    Boolean aA
    Boolean bB
    String bB
    String eE
    Boolean fF
    String oO
    String vV
    String xX
    Boolean sS
    File iI
    File eE
    String? hashHashOverlap
  }
  command <<<
    hash-overlap \
      ~{hashHashOverlap} \
      ~{true="-A" false="" aA} \
      ~{true="-B" false="" bB} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""}
  >>>
}