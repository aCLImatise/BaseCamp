version 1.0

task Kaiju {
  input {
    File tT
    File fF
    File iI
    File jJ
    File oO
    Int zZ
    String aA
    Int eE
    Int mM
    Int sS
    Float eE
    Boolean xX
    Boolean xX
    Boolean pP
    Boolean vV
  }
  command <<<
    kaiju \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-X" false="" xX} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV}
  >>>
}