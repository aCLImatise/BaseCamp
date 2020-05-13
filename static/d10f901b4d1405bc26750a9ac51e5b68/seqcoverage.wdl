version 1.0

task Seqcoverage {
  input {
    String oO
    String aA
    String tT
    String dD
    Boolean qQ
  }
  command <<<
    seqcoverage \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-q" false="" qQ}
  >>>
}