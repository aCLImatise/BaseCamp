version 1.0

task QpGraph {
  input {
    String zZ
    String sS
    File pP
    String gG
    String oO
    String dD
    String xX
    String lL
    Boolean vV
    Boolean vV
  }
  command <<<
    qpGraph \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}