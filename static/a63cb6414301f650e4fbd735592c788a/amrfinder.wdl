version 1.0

task Amrfinder.pl {
  input {
    String hH
    String vV
    String uU
    String dD
    File oO
    String qQ
    String pP
    String gG
    String nN
    Boolean iI
    Boolean cC
    Boolean tT
  }
  command <<<
    amrfinder.pl \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(uU) then ("-U " +  '"' + uU + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT}
  >>>
}