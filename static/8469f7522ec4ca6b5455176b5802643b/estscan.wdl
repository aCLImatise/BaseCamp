version 1.0

task Estscan {
  input {
    Boolean aA
    Float bB
    Int dD
    Int iI
    Int lL
    File mM
    Int mM
    Int nN
    Boolean nN
    Boolean oO
    File oO
    Float pP
    Boolean sS
    Int sS
    Boolean tT
    File tT
    Boolean vV
    Int wW
  }
  command <<<
    estscan \
      ~{true="-a" false="" aA} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-O" false="" oO} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-T" false="" tT} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}