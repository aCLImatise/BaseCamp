version 1.0

task PairSequences {
  input {
    String iI
    String sS
    String oO
  }
  command <<<
    pair_sequences \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}