version 1.0

task SentieonBwaBwasw {
  input {
    Int aA
    Int bB
    Int qQ
    Int rR
    Int wW
    Float mM
    Int tT
    File fF
    Boolean hH
    Boolean cC
    Boolean mM
    Boolean sS
    Int iI
    Int tT
    Float cC
    Int zZ
    Int sS
    Int nN
    Int gG
    String? bwaBwa
    String? bBWasW
    String? targetTargetPrefix
    String? queryQueryFa
    String? queryQuery2fa
  }
  command <<<
    sentieon-bwa bwasw \
      ~{bwaBwa} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-H" false="" hH} \
      ~{true="-C" false="" cC} \
      ~{true="-M" false="" mM} \
      ~{true="-S" false="" sS} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{bBWasW} \
      ~{targetTargetPrefix} \
      ~{queryQueryFa} \
      ~{queryQuery2fa}
  >>>
}