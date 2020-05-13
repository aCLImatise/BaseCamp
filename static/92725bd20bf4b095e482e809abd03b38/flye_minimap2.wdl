version 1.0

task FlyeMinimap2 {
  input {
    Boolean hH
    Int kK
    Int wW
    String iI
    File dD
    Float fF
    String gG
    String gG
    String fF
    String rR
    Int nN
    Int mM
    Boolean xX
    Float pP
    Int nN
    Int aA
    Int bB
    Array[Int]+ oO
    Array[Int]+ eE
    Array[Int]+ zZ
    Int sS
    String uU
    Boolean aA
    File oO
    Boolean lL
    String rR
    Boolean cC
    Boolean csCs
    Boolean mdMd
    Boolean eqEqX
    Boolean yY
    Int tT
    String kK
    String xX
  }
  command <<<
    flye-minimap2 \
      ~{true="-H" false="" hH} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-X" false="" xX} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="--cs" false="" csCs} \
      ~{true="--MD" false="" mdMd} \
      ~{true="--eqx" false="" eqEqX} \
      ~{true="-Y" false="" yY} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""}
  >>>
}