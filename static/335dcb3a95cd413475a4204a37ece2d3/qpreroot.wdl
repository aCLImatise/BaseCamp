version 1.0

task Qpreroot {
  input {
    File pP
    String rR
    String gG
    String oO
    String dD
    String sS
    String xX
    Boolean hH
    Boolean vV
    Boolean vV
    Boolean fF
  }
  command <<<
    qpreroot \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-H" false="" hH} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV} \
      ~{true="-f" false="" fF}
  >>>
}