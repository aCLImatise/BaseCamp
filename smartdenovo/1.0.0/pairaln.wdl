version 1.0

task Pairaln {
  input {
    Boolean sS
    Int mM
    Int xX
    Int oO
    Int eE
    Int tT
    Int wW
    Boolean aA
  }
  command <<<
    pairaln \
      ~{true="-s" false="" sS} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{true="-a" false="" aA}
  >>>
}