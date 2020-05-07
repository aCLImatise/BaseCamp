version 1.0

task Overmerry {
  input {
    String gG
    String mM
    String cC
    String tT
    String mcMc
    String tT
    String tbTb
    String teTe
    String qbQb
    String qeQe
    Boolean vV
    String oO
  }
  command <<<
    overmerry \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(mcMc) then ("-mc " +  '"' + mcMc + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tbTb) then ("-tb " +  '"' + tbTb + '"') else ""} \
      ~{if defined(teTe) then ("-te " +  '"' + teTe + '"') else ""} \
      ~{if defined(qbQb) then ("-qb " +  '"' + qbQb + '"') else ""} \
      ~{if defined(qeQe) then ("-qe " +  '"' + qeQe + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}