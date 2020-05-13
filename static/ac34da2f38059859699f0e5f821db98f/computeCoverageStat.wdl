version 1.0

task ComputeCoverageStat {
  input {
    String gG
    String tT
    String sS
    String oO
    Boolean nN
    Boolean uU
    Boolean lL
  }
  command <<<
    computeCoverageStat \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-u" false="" uU} \
      ~{true="-L" false="" lL}
  >>>
}