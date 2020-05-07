version 1.0

task ExactSNP {
  input {
    File iI
    File gG
    File oO
    File aA
    Boolean bB
    Int qQ
    Float fF
    Int nN
    Int rR
    Int xX
    Int sS
    Int tT
    Int tT
    Boolean vV
    File cC
  }
  command <<<
    exactSNP \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""}
  >>>
}