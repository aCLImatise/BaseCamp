version 1.0

task BwaMem {
  input {
    Int tT
    Int kK
    Int wW
    Int dD
    Float rR
    Int yY
    Int cC
    Float dD
    Int wW
    Int mM
    Boolean sS
    Boolean pP
    Int aA
    Int bB
    Array[Int]+ oO
    Array[Int]+ eE
    Array[Int]+ lL
    Int uU
    String xX
    Boolean qQ
    Int kK
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
    String? in1fqIn1fq
    String? in2fqIn2fq
  }
  command <<<
    bwa mem \
      ~{idxIdxBase} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{true="-P" false="" pP} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(uU) then ("-U " +  '"' + uU + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-C" false="" cC} \
      ~{true="-V" false="" vV} \
      ~{true="-Y" false="" yY} \
      ~{true="-M" false="" mM} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{in1fqIn1fq} \
      ~{in2fqIn2fq}
  >>>
}