version 1.0

task Wtcyc {
  input {
    Int tT
    Int pP
    Int pP
    String oO
    String aA
    Boolean fF
    Int sS
    Int mM
    Int mM
    Int xX
    Int oO
    Int eE
    Int tT
    Int wW
    String? longLongReadFile
  }
  command <<<
    wtcyc \
      ~{longLongReadFile} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""}
  >>>
}