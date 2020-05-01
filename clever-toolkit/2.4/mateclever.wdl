version 1.0

task Mateclever {
  input {
    String tT
    Int mM
    Boolean fF
    String wW
    Boolean kK
    String wW
    Int oO
    Int zZ
  }
  command <<<
    mateclever \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="-k" false="" kK} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""}
  >>>
}