version 1.0

task RegtoolsJunctionsExtract {
  input {
    Int aA
    Int mM
    Int mM
    File oO
    String rR
    Int sS
    String tT
    String? indexedIndexedAlignmentsBam
  }
  command <<<
    regtools junctions extract \
      ~{indexedIndexedAlignmentsBam} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}