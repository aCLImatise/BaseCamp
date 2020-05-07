version 1.0

task Genomecompile {
  input {
    Boolean vV
    String gG
    String oO
  }
  command <<<
    genomecompile \
      ~{true="-v" false="" vV} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}