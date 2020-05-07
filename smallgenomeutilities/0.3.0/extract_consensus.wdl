version 1.0

task ExtractConsensus {
  input {
    String fF
    String rR
    Int cC
    Int qQ
    Float aA
    String nN
    File oO
    String iI
  }
  command <<<
    extract_consensus \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}