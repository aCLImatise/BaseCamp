version 1.0

task Motifcompile {
  input {
    Boolean vV
    String mM
    String gG
    String oO
  }
  command <<<
    motifcompile \
      ~{true="-v" false="" vV} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}