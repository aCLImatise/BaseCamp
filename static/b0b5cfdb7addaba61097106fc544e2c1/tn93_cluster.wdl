version 1.0

task Tn93Cluster {
  input {
    String oO
    String tT
    String aA
    String cC
    String mM
    String lL
    String gG
    String qQ
  }
  command <<<
    tn93-cluster \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""}
  >>>
}