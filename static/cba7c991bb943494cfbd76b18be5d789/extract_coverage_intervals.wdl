version 1.0

task ExtractCoverageIntervals {
  input {
    String rR
    String cfCf
    Int cC
    Float fF
    String wW
    String sS
    String nN
    Boolean eE
    Int tT
    String oO
    String? bamBam
  }
  command <<<
    extract_coverage_intervals \
      ~{bamBam} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(cfCf) then ("-cf " +  '"' + cfCf + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}