version 1.0

task CountRead {
  input {
    String tT
    String cC
    String oO
    String chromChrom
    String? regionRegionFile
  }
  command <<<
    countRead \
      ~{regionRegionFile} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""}
  >>>
}