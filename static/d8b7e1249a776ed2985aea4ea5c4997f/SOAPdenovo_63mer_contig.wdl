version 1.0

task SOAPdenovo63merContig {
  input {
    String gG
    Boolean rR
    Int mM
    Int dD
    Int eE
    Int mM
    String sS
    Int pP
    Boolean eE
  }
  command <<<
    SOAPdenovo-63mer contig \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-E" false="" eE}
  >>>
}