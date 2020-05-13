version 1.0

task PaladinAlign {
  input {
    Boolean pP
    Boolean bB
    Boolean jJ
    Int fF
    Float fF
    Int zZ
    Int tT
    Int kK
    Int dD
    Float rR
    Int yY
    Int cC
    Float dD
    Int wW
    Int mM
    Boolean eE
    Int aA
    Int bB
    Array[Int]+ oO
    Array[Int]+ eE
    Array[Int]+ lL
    Int uU
    String xX
    String oO
    Int uU
    String pP
    Boolean gG
    Boolean nN
    String rR
    String hH
    Boolean jJ
    Int vV
    Int tT
    Array[Int]+ hH
    Boolean aA
    Boolean cC
    Boolean vV
    Boolean yY
    Boolean mM
    Array[Float]+ iI
    String? idxIdxBase
    String? inInFq
  }
  command <<<
    paladin align \
      ~{idxIdxBase} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-J" false="" jJ} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(uU) then ("-U " +  '"' + uU + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-n" false="" nN} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""} \
      ~{true="-j" false="" jJ} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-C" false="" cC} \
      ~{true="-V" false="" vV} \
      ~{true="-Y" false="" yY} \
      ~{true="-M" false="" mM} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{inInFq}
  >>>
}