version 1.0

task Wtmsa {
  input {
    Int pP
    Int pP
    String iI
    String oO
    String bB
    String gG
    Boolean fF
    Boolean hH
    Int zZ
    Int yY
    Int rR
    Int lL
    Int mM
    Int xX
    Int iI
    Int dD
    Int vV
    Int eE
    Int tT
    Boolean fF
    Int wW
    Int wW
    Int eE
    Int gG
    Float mM
    Int nN
    Boolean vV
  }
  command <<<
    wtmsa \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-H" false="" hH} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(vV) then ("-V " +  '"' + vV + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}