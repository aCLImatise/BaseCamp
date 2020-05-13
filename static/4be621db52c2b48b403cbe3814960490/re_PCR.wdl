version 1.0

task RePCR {
  input {
    String pP
    String pP
    String sS
    String sS
    String nN
    String gG
    String mM
    Boolean lL
    Boolean gG
    Int dD
    Boolean rR
    Boolean oO
    String cC
    String oO
    Boolean qQ
  }
  command <<<
    re-PCR \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-G" false="" gG} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-O" false="" oO} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-q" false="" qQ}
  >>>
}