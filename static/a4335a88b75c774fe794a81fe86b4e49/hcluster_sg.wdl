version 1.0

task HclusterSg {
  input {
    String wW
    String sS
    String mM
    String oO
    Boolean cC
    Boolean vV
    String bB
    Boolean oO
    Boolean rR
    File cC
    String lL
  }
  command <<<
    hcluster_sg \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-v" false="" vV} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""}
  >>>
}