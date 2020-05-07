version 1.0

task Gkmtrain {
  input {
    Boolean tT
    Int lL
    Int kK
    Int dD
    Float gG
    Int mM
    Float hH
    Float cC
    Float eE
    Float wW
    Float mM
    Boolean sS
    Int xX
    Int iI
    Int rR
    Boolean vV
  }
  command <<<
    gkmtrain \
      ~{true="-t" false="" tT} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}