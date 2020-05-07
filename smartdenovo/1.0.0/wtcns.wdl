version 1.0

task Wtcns {
  input {
    Int tT
    Int pP
    Int pP
    String iI
    String oO
    Boolean fF
    Boolean hH
    Int zZ
    Int yY
    Int rR
    Int lL
    Int mM
    Int xX
    Int oO
    Int iI
    Int dD
    Int eE
    Int tT
    Boolean fF
    Int wW
    Int wW
    Int eE
    Int rR
    Float mM
    Float yY
    Float nN
    Int nN
    String aA
    Boolean aA
    Float vV
    Boolean vV
  }
  command <<<
    wtcns \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-H" false="" hH} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(yY) then ("-Y " +  '"' + yY + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{if defined(vV) then ("-V " +  '"' + vV + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}