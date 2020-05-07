version 1.0

task Wtgbo {
  input {
    Boolean fF
    Int cC
    Boolean qQ
    Float qQ
    Boolean hH
    Int zZ
    Int zZ
    Int yY
    Int rR
    Int rR
    Int lL
    Int mM
    Int xX
    Int oO
    Int eE
    Int tT
    Int wW
    Int wW
    Boolean nN
    Int nN
  }
  command <<<
    wtgbo \
      ~{true="-f" false="" fF} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-Q" false="" qQ} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-H" false="" hH} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""}
  >>>
}