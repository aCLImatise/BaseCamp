version 1.0

task Alignstats {
  input {
    Boolean vV
    Int nN
    Boolean pP
    Int pP
    String iI
    String jJ
    String oO
    String rR
    String tT
    String mM
    String tT
    Int qQ
    Int fF
    Int fF
    Int bB
    Boolean dD
    Boolean mM
    Boolean oO
    Boolean uU
    Boolean aA
    Boolean cC
    Boolean wW
  }
  command <<<
    alignstats \
      ~{true="-v" false="" vV} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{true="-M" false="" mM} \
      ~{true="-O" false="" oO} \
      ~{true="-U" false="" uU} \
      ~{true="-A" false="" aA} \
      ~{true="-C" false="" cC} \
      ~{true="-W" false="" wW}
  >>>
}