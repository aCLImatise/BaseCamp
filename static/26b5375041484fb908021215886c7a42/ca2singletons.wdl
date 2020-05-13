version 1.0

task Ca2singletons {
  input {
    String iI
    String oO
    String fF
    Boolean clearClear
    Boolean contigContig
    Boolean listList
  }
  command <<<
    ca2singletons \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-clear" false="" clearClear} \
      ~{true="-contig" false="" contigContig} \
      ~{true="-list" false="" listList}
  >>>
}