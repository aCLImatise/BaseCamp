version 1.0

task PathoscopeQC {
  input {
    String rR
    String tT
    String oO
    String sS
    String mM
    String aA
    String a2A2
    String qQ
    String rR
    String eE
    String dD
    String gG
    Boolean noNoPrinSeq
    String pP
    Boolean debugDebug
  }
  command <<<
    pathoscope QC \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(a2A2) then ("-a2 " +  '"' + a2A2 + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="--no_prinseq" false="" noNoPrinSeq} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}