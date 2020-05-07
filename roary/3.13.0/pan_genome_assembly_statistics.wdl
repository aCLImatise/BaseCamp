version 1.0

task PanGenomeAssemblyStatistics {
  input {
    Int pP
    String oO
    Float cdCd
    Boolean vV
    Boolean wW
    String? geneGenePresenceAbsenceCsv
  }
  command <<<
    pan_genome_assembly_statistics \
      ~{geneGenePresenceAbsenceCsv} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cdCd) then ("-cd " +  '"' + cdCd + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-w" false="" wW}
  >>>
}