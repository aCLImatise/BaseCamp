version 1.0

task Gerpcol {
  input {
    Boolean vV
    String tT
    File fF
    Boolean aA
    String eE
    Boolean jJ
    String rR
    String pP
    String zZ
    String nN
    String sS
    String xX
  }
  command <<<
    gerpcol \
      ~{true="-v" false="" vV} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-j" false="" jJ} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""}
  >>>
}