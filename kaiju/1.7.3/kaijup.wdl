version 1.0

task Kaijup {
  input {
    File fF
    File iI
    File oO
    Int zZ
    String aA
    Int eE
    Int mM
    Int sS
    Float eE
    Boolean xX
    Boolean xX
    Boolean vV
  }
  command <<<
    kaijup \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-X" false="" xX} \
      ~{true="-v" false="" vV}
  >>>
}