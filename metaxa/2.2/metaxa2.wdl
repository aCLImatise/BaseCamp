version 1.0

task Metaxa2 {
  input {
    String iI
    String oO
    String cpuCpu
  }
  command <<<
    metaxa2 \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}